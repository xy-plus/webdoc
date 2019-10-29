profile=$(cat profile.conf)
origin_profile="clientID: 'GitHub Application Client ID',
clientSecret: 'GitHub Application Client Secret',
repo: 'GitHub repo',
owner: 'GitHub repo owner',
admin: [
    'GitHub repo owner and collaborators, only these guys can initialize github issues'
],
createIssueManually: true,
id: document.title"

if [ "$profile" = "$origin_profile" ]
then
echo "Error: Please change porfile.conf !!!"
else
cat > gitbook/comment.html << EOF
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css"
/>
<script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
<div id="gitalk-container" style="margin: 5%"></div>
<script>
  const gitalk = new Gitalk({
${profile}
  })
  gitalk.render('gitalk-container')
</script>
<script>
  require(['gitbook'], function(gitbook) {
    const gitalk = new Gitalk({
${profile}
    })
    gitbook.events.bind('page.change', initMygitalk)
    function initMygitalk() {
      gitalk.render('gitalk-container')
    }
  })
</script>
EOF
echo "Done! run `gitbook serve` to preview your web doc"
fi

