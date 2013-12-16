


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=10">
        <title>Farmacox/Farmacox.sql at master · Capriatto/Farmacox</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe139-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (e1c0c3f392) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="BA71DF6D:218B:7189F20:52AF6169" name="octolytics-dimension-request_id" /><meta content="1812257" name="octolytics-actor-id" /><meta content="Capriatto" name="octolytics-actor-login" /><meta content="1f5cb630f742e94df86e0a2cb5ad80257a3740da4cc9e11058cebac8fef5b80c" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="NE5d2EreM8WniomC9a/Tl4BFXaKFUKIx/KrpukqlvBY=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-e87490f52957f7456ec13b8f763879fc041ebc7e.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-113520fd4ebb74e106043ae23735a6b44043d348.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-1844a1411761b49806b833b36f4f340a4b4b17bd.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-142714ce3293528ebf737967d22fe9ece8e545eb.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="fa4d66ba06cb3650d9f287f04798ef29">

        <link data-pjax-transient rel='permalink' href='/Capriatto/Farmacox/blob/4b8eabe0438114d93d04438cc58620e75ffea400/Farmacox.sql'>
  <meta property="og:title" content="Farmacox"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/Capriatto/Farmacox"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="Farmacox - Health products management"/>

  <meta name="description" content="Farmacox - Health products management" />

  <meta content="1812257" name="octolytics-dimension-user_id" /><meta content="Capriatto" name="octolytics-dimension-user_login" /><meta content="14848591" name="octolytics-dimension-repository_id" /><meta content="Capriatto/Farmacox" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="14848591" name="octolytics-dimension-repository_network_root_id" /><meta content="Capriatto/Farmacox" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Capriatto/Farmacox/commits/master.atom" rel="alternate" title="Recent Commits to Farmacox:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="Capriatto"
      data-repo="Capriatto/Farmacox"
      data-branch="master"
      data-sha="aa11a046d66311716175e69c5cf6b6fecadd1979"
  >

    <input type="hidden" name="nwo" value="Capriatto/Farmacox" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/Capriatto" class="name">
        <img height="20" src="https://2.gravatar.com/avatar/82e3fe676d2988cc6fb3bdc6941921a1?d=https%3A%2F%2Fidenticons.github.com%2F57f7f5e3482f14dac9b6f0f6400d3151.png&amp;r=x&amp;s=140" width="20" /> Capriatto
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="Capriatto/Farmacox">This repository</span>
    </li>
      <li>
        <a href="/Capriatto/Farmacox/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
      <li>
        <a href="/Capriatto/Farmacox/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="NE5d2EreM8WniomC9a/Tl4BFXaKFUKIx/KrpukqlvBY=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="14848591" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/Capriatto/Farmacox/watchers">
        3
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/Capriatto/Farmacox/unstar"
      class="minibutton with-count js-toggler-target star-button starred upwards"
      title="Unstar this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/Capriatto/Farmacox/star"
      class="minibutton with-count js-toggler-target star-button unstarred upwards"
      title="Star this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/Capriatto/Farmacox/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/Capriatto/Farmacox/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="facebox nofollow">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/Capriatto/Farmacox/network" class="social-count">3</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/Capriatto" class="url fn" itemprop="url" rel="author"><span itemprop="title">Capriatto</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/Capriatto/Farmacox" class="js-current-repository js-repo-home-link">Farmacox</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container  ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/Capriatto/Farmacox" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /Capriatto/Farmacox">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/Capriatto/Farmacox/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /Capriatto/Farmacox/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests">
        <a href="/Capriatto/Farmacox/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /Capriatto/Farmacox/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/Capriatto/Farmacox/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /Capriatto/Farmacox/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/Capriatto/Farmacox/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /Capriatto/Farmacox/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/Capriatto/Farmacox/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /Capriatto/Farmacox/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/Capriatto/Farmacox/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /Capriatto/Farmacox/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="sunken-menu-separator"></div>
      <ul class="sunken-menu-group">
        <li class="tooltipped leftwards" title="Settings">
          <a href="/Capriatto/Farmacox/settings"
            class="sunken-menu-item" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Capriatto/Farmacox.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Capriatto/Farmacox.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:Capriatto/Farmacox.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:Capriatto/Farmacox.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/Capriatto/Farmacox" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/Capriatto/Farmacox" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

              <a href="/Capriatto/Farmacox/archive/master.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:d10329c0bb7cc64c876263e58248e8f0 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/Capriatto/Farmacox/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Capriatto/Farmacox/blob/camilo/Farmacox.sql"
                 data-name="camilo"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="camilo">camilo</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Capriatto/Farmacox/blob/master/Farmacox.sql"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/Capriatto/Farmacox/blob/sebastian/Farmacox.sql"
                 data-name="sebastian"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="sebastian">sebastian</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/Capriatto/Farmacox/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="NE5d2EreM8WniomC9a/Tl4BFXaKFUKIx/KrpukqlvBY=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="branch" value="Farmacox.sql" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Capriatto/Farmacox" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Farmacox</span></a></span></span><span class="separator"> / </span><strong class="final-path">Farmacox.sql</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="Farmacox.sql" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/Capriatto/Farmacox/contributors/master/Farmacox.sql">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>313 lines (255 sloc)</span>
        <span>8.946 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards"
               href="http://windows.github.com" title="Open this file in GitHub for Windows">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton"
                   href="/Capriatto/Farmacox/edit/master/Farmacox.sql"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/Capriatto/Farmacox/raw/master/Farmacox.sql" class="button minibutton " id="raw-url">Raw</a>
            <a href="/Capriatto/Farmacox/blame/master/Farmacox.sql" class="button minibutton ">Blame</a>
          <a href="/Capriatto/Farmacox/commits/master/Farmacox.sql" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon tooltipped downwards"
             href="/Capriatto/Farmacox/delete/master/Farmacox.sql"
             title=""
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-sql js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>

            </td>
            <td class="blob-line-code">
                    <div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">-- phpMyAdmin SQL Dump</span></div><div class='line' id='LC2'><span class="c1">-- version 4.0.4.1</span></div><div class='line' id='LC3'><span class="c1">-- http://www.phpmyadmin.net</span></div><div class='line' id='LC4'><span class="c1">--</span></div><div class='line' id='LC5'><span class="c1">-- Servidor: 127.0.0.1</span></div><div class='line' id='LC6'><span class="c1">-- Tiempo de generación: 16-12-2013 a las 07:44:25</span></div><div class='line' id='LC7'><span class="c1">-- Versión del servidor: 5.5.32</span></div><div class='line' id='LC8'><span class="c1">-- Versión de PHP: 5.4.19</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="k">SET</span> <span class="n">SQL_MODE</span> <span class="o">=</span> <span class="ss">&quot;NO_AUTO_VALUE_ON_ZERO&quot;</span><span class="p">;</span></div><div class='line' id='LC11'><span class="k">SET</span> <span class="n">time_zone</span> <span class="o">=</span> <span class="ss">&quot;+00:00&quot;</span><span class="p">;</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */</span><span class="p">;</span></div><div class='line' id='LC15'><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */</span><span class="p">;</span></div><div class='line' id='LC16'><span class="cm">/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */</span><span class="p">;</span></div><div class='line' id='LC17'><span class="cm">/*!40101 SET NAMES utf8 */</span><span class="p">;</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">--</span></div><div class='line' id='LC20'><span class="c1">-- Base de datos: `farmacox`</span></div><div class='line' id='LC21'><span class="c1">--</span></div><div class='line' id='LC22'><span class="k">CREATE</span> <span class="k">DATABASE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">farmacox</span><span class="o">`</span> <span class="k">DEFAULT</span> <span class="nb">CHARACTER</span> <span class="k">SET</span> <span class="n">utf8</span> <span class="k">COLLATE</span> <span class="n">utf8_general_ci</span><span class="p">;</span></div><div class='line' id='LC23'><span class="n">USE</span> <span class="o">`</span><span class="n">farmacox</span><span class="o">`</span><span class="p">;</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="c1">--</span></div><div class='line' id='LC28'><span class="c1">-- Estructura de tabla para la tabla `categoria`</span></div><div class='line' id='LC29'><span class="c1">--</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">categoria</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">20</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC35'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'><span class="c1">--</span></div><div class='line' id='LC38'><span class="c1">-- Volcado de datos para la tabla `categoria`</span></div><div class='line' id='LC39'><span class="c1">--</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">categoria</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC42'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Jarabe&#39;</span><span class="p">),</span></div><div class='line' id='LC43'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Pastillas&#39;</span><span class="p">),</span></div><div class='line' id='LC44'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Crema&#39;</span><span class="p">);</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="c1">--</span></div><div class='line' id='LC49'><span class="c1">-- Estructura de tabla para la tabla `enfermedad`</span></div><div class='line' id='LC50'><span class="c1">--</span></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">enfermedad</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">20</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="o">`</span><span class="n">gravedad</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="o">`</span><span class="n">gravedad_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC57'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_enfermedad_gravedad1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">gravedad_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC59'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC60'><br/></div><div class='line' id='LC61'><span class="c1">--</span></div><div class='line' id='LC62'><span class="c1">-- Volcado de datos para la tabla `enfermedad`</span></div><div class='line' id='LC63'><span class="c1">--</span></div><div class='line' id='LC64'><br/></div><div class='line' id='LC65'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">enfermedad</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">gravedad</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">gravedad_id</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC66'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;gripe&#39;</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="mi">3</span><span class="p">),</span></div><div class='line' id='LC67'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;diabetes&#39;</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="mi">3</span><span class="p">),</span></div><div class='line' id='LC68'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;dengue&#39;</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC69'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;paludismo&#39;</span><span class="p">,</span> <span class="k">NULL</span><span class="p">,</span> <span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC72'><br/></div><div class='line' id='LC73'><span class="c1">--</span></div><div class='line' id='LC74'><span class="c1">-- Estructura de tabla para la tabla `enfermedad_sintoma`</span></div><div class='line' id='LC75'><span class="c1">--</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">enfermedad_sintoma</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC78'>&nbsp;&nbsp;<span class="o">`</span><span class="n">enfermedad_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="o">`</span><span class="n">sintoma_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_enfermedad_has_sintoma_sintoma1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">sintoma_id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_enfermedad_has_sintoma_enfermedad1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">enfermedad_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC82'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'><span class="c1">--</span></div><div class='line' id='LC85'><span class="c1">-- Volcado de datos para la tabla `enfermedad_sintoma`</span></div><div class='line' id='LC86'><span class="c1">--</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">enfermedad_sintoma</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">enfermedad_id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">sintoma_id</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC89'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">),</span></div><div class='line' id='LC90'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">3</span><span class="p">),</span></div><div class='line' id='LC91'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">4</span><span class="p">),</span></div><div class='line' id='LC92'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">5</span><span class="p">),</span></div><div class='line' id='LC93'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="mi">11</span><span class="p">),</span></div><div class='line' id='LC94'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="mi">12</span><span class="p">),</span></div><div class='line' id='LC95'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="mi">10</span><span class="p">),</span></div><div class='line' id='LC96'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">6</span><span class="p">),</span></div><div class='line' id='LC97'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">7</span><span class="p">),</span></div><div class='line' id='LC98'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">4</span><span class="p">),</span></div><div class='line' id='LC99'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">1</span><span class="p">),</span></div><div class='line' id='LC100'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">7</span><span class="p">),</span></div><div class='line' id='LC101'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">8</span><span class="p">),</span></div><div class='line' id='LC102'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC103'><br/></div><div class='line' id='LC104'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC105'><br/></div><div class='line' id='LC106'><span class="c1">--</span></div><div class='line' id='LC107'><span class="c1">-- Estructura de tabla para la tabla `gravedad`</span></div><div class='line' id='LC108'><span class="c1">--</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">gravedad</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC111'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC112'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">5</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC114'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="c1">--</span></div><div class='line' id='LC117'><span class="c1">-- Volcado de datos para la tabla `gravedad`</span></div><div class='line' id='LC118'><span class="c1">--</span></div><div class='line' id='LC119'><br/></div><div class='line' id='LC120'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">gravedad</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC121'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;baja&#39;</span><span class="p">),</span></div><div class='line' id='LC122'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;media&#39;</span><span class="p">),</span></div><div class='line' id='LC123'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;alta&#39;</span><span class="p">);</span></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="c1">--</span></div><div class='line' id='LC128'><span class="c1">-- Estructura de tabla para la tabla `producto`</span></div><div class='line' id='LC129'><span class="c1">--</span></div><div class='line' id='LC130'><br/></div><div class='line' id='LC131'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">producto</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">char</span><span class="p">(</span><span class="mi">3</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC133'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">30</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC134'>&nbsp;&nbsp;<span class="o">`</span><span class="n">precio</span><span class="o">`</span> <span class="n">double</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC135'>&nbsp;&nbsp;<span class="o">`</span><span class="n">precio_comercial</span><span class="o">`</span> <span class="n">double</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC136'>&nbsp;&nbsp;<span class="o">`</span><span class="n">estado</span><span class="o">`</span> <span class="n">tinyint</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="k">DEFAULT</span> <span class="s1">&#39;1&#39;</span><span class="p">,</span></div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="o">`</span><span class="n">categoria_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC138'>&nbsp;&nbsp;<span class="o">`</span><span class="n">proveedor_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC139'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC140'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_producto_categoria_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">categoria_id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_producto_proveedor1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">proveedor_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC142'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><span class="c1">--</span></div><div class='line' id='LC145'><span class="c1">-- Volcado de datos para la tabla `producto`</span></div><div class='line' id='LC146'><span class="c1">--</span></div><div class='line' id='LC147'><br/></div><div class='line' id='LC148'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">producto</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">precio</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">precio_comercial</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">estado</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">categoria_id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">proveedor_id</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC149'><span class="p">(</span><span class="s1">&#39;001&#39;</span><span class="p">,</span> <span class="s1">&#39;Acetaminofen&#39;</span><span class="p">,</span> <span class="mi">150</span><span class="p">,</span> <span class="mi">250</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC150'><span class="p">(</span><span class="s1">&#39;002&#39;</span><span class="p">,</span> <span class="s1">&#39;Dolex&#39;</span><span class="p">,</span> <span class="mi">300</span><span class="p">,</span> <span class="mi">600</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC151'><span class="p">(</span><span class="s1">&#39;003&#39;</span><span class="p">,</span> <span class="s1">&#39;Farmaton&#39;</span><span class="p">,</span> <span class="mi">700</span><span class="p">,</span> <span class="mi">1200</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">4</span><span class="p">),</span></div><div class='line' id='LC152'><span class="p">(</span><span class="s1">&#39;004&#39;</span><span class="p">,</span> <span class="s1">&#39;Butoconazol&#39;</span><span class="p">,</span> <span class="mi">3400</span><span class="p">,</span> <span class="mi">3800</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="mi">4</span><span class="p">),</span></div><div class='line' id='LC153'><span class="p">(</span><span class="s1">&#39;005&#39;</span><span class="p">,</span> <span class="s1">&#39;Sinutab&#39;</span><span class="p">,</span> <span class="mi">400</span><span class="p">,</span> <span class="mi">800</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">1</span><span class="p">),</span></div><div class='line' id='LC154'><span class="p">(</span><span class="s1">&#39;006&#39;</span><span class="p">,</span> <span class="s1">&#39;Doloran&#39;</span><span class="p">,</span> <span class="mi">4800</span><span class="p">,</span> <span class="mi">5800</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="mi">3</span><span class="p">),</span></div><div class='line' id='LC155'><span class="p">(</span><span class="s1">&#39;007&#39;</span><span class="p">,</span> <span class="s1">&#39;Fistalibs&#39;</span><span class="p">,</span> <span class="mi">3800</span><span class="p">,</span> <span class="mi">4200</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">1</span><span class="p">),</span></div><div class='line' id='LC156'><span class="p">(</span><span class="s1">&#39;008&#39;</span><span class="p">,</span> <span class="s1">&#39;Instalivio&#39;</span><span class="p">,</span> <span class="mi">400</span><span class="p">,</span> <span class="mi">500</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC157'><span class="p">(</span><span class="s1">&#39;009&#39;</span><span class="p">,</span> <span class="s1">&#39;Dopamina&#39;</span><span class="p">,</span> <span class="mi">500</span><span class="p">,</span> <span class="mi">700</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="mi">3</span><span class="p">),</span></div><div class='line' id='LC158'><span class="p">(</span><span class="s1">&#39;010&#39;</span><span class="p">,</span> <span class="s1">&#39;Dolex Gripe&#39;</span><span class="p">,</span> <span class="mi">450</span><span class="p">,</span> <span class="mi">800</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC159'><span class="p">(</span><span class="s1">&#39;011&#39;</span><span class="p">,</span> <span class="s1">&#39;Cicotec&#39;</span><span class="p">,</span> <span class="mi">200</span><span class="p">,</span> <span class="mi">350</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC160'><span class="p">(</span><span class="s1">&#39;012&#39;</span><span class="p">,</span> <span class="s1">&#39;Diclofenaco&#39;</span><span class="p">,</span> <span class="mi">400</span><span class="p">,</span> <span class="mi">500</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">),</span></div><div class='line' id='LC161'><span class="p">(</span><span class="s1">&#39;013&#39;</span><span class="p">,</span> <span class="s1">&#39;Dalay&#39;</span><span class="p">,</span> <span class="mi">2500</span><span class="p">,</span> <span class="mi">4000</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC162'><br/></div><div class='line' id='LC163'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC164'><br/></div><div class='line' id='LC165'><span class="c1">--</span></div><div class='line' id='LC166'><span class="c1">-- Estructura de tabla para la tabla `proveedor`</span></div><div class='line' id='LC167'><span class="c1">--</span></div><div class='line' id='LC168'><br/></div><div class='line' id='LC169'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">proveedor</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC170'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC171'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre_empresa</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">30</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC172'>&nbsp;&nbsp;<span class="o">`</span><span class="n">telefono</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC173'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC174'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC175'><br/></div><div class='line' id='LC176'><span class="c1">--</span></div><div class='line' id='LC177'><span class="c1">-- Volcado de datos para la tabla `proveedor`</span></div><div class='line' id='LC178'><span class="c1">--</span></div><div class='line' id='LC179'><br/></div><div class='line' id='LC180'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">proveedor</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre_empresa</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">telefono</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC181'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Bayer&#39;</span><span class="p">,</span> <span class="s1">&#39;2168783&#39;</span><span class="p">),</span></div><div class='line' id='LC182'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;La santé&#39;</span><span class="p">,</span> <span class="s1">&#39;2174344&#39;</span><span class="p">),</span></div><div class='line' id='LC183'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Genfar&#39;</span><span class="p">,</span> <span class="s1">&#39;2143543&#39;</span><span class="p">),</span></div><div class='line' id='LC184'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;Pharmaderm&#39;</span><span class="p">,</span> <span class="s1">&#39;2194333&#39;</span><span class="p">);</span></div><div class='line' id='LC185'><br/></div><div class='line' id='LC186'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'><span class="c1">--</span></div><div class='line' id='LC189'><span class="c1">-- Estructura de tabla para la tabla `sintoma`</span></div><div class='line' id='LC190'><span class="c1">--</span></div><div class='line' id='LC191'><br/></div><div class='line' id='LC192'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">sintoma</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC193'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC194'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">30</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC195'>&nbsp;&nbsp;<span class="o">`</span><span class="n">producto_recomendado</span><span class="o">`</span> <span class="nb">char</span><span class="p">(</span><span class="mi">3</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC196'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC197'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC198'><br/></div><div class='line' id='LC199'><span class="c1">--</span></div><div class='line' id='LC200'><span class="c1">-- Volcado de datos para la tabla `sintoma`</span></div><div class='line' id='LC201'><span class="c1">--</span></div><div class='line' id='LC202'><br/></div><div class='line' id='LC203'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">sintoma</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">producto_recomendado</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC204'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;dolor de cabeza&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC205'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;escalofríos&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC206'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;tos &#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC207'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;fiebre&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC208'><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="s1">&#39;cansancio&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC209'><span class="p">(</span><span class="mi">6</span><span class="p">,</span> <span class="s1">&#39;vómito&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC210'><span class="p">(</span><span class="mi">7</span><span class="p">,</span> <span class="s1">&#39;náuseas&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC211'><span class="p">(</span><span class="mi">8</span><span class="p">,</span> <span class="s1">&#39;perdida de apetito&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC212'><span class="p">(</span><span class="mi">9</span><span class="p">,</span> <span class="s1">&#39;dolores musculares&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC213'><span class="p">(</span><span class="mi">10</span><span class="p">,</span> <span class="s1">&#39;perdida de peso&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC214'><span class="p">(</span><span class="mi">11</span><span class="p">,</span> <span class="s1">&#39;orinar frecuentemente&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">),</span></div><div class='line' id='LC215'><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="s1">&#39;mucha hambre&#39;</span><span class="p">,</span> <span class="s1">&#39;0&#39;</span><span class="p">);</span></div><div class='line' id='LC216'><br/></div><div class='line' id='LC217'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC218'><br/></div><div class='line' id='LC219'><span class="c1">--</span></div><div class='line' id='LC220'><span class="c1">-- Estructura de tabla para la tabla `usuario`</span></div><div class='line' id='LC221'><span class="c1">--</span></div><div class='line' id='LC222'><br/></div><div class='line' id='LC223'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">usuario</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC224'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC225'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nombre</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">45</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC226'>&nbsp;&nbsp;<span class="o">`</span><span class="n">nickname</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC227'>&nbsp;&nbsp;<span class="o">`</span><span class="n">contrase</span><span class="err">ñ</span><span class="n">a</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC228'>&nbsp;&nbsp;<span class="o">`</span><span class="n">telefono</span><span class="o">`</span> <span class="nb">varchar</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC229'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC230'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span>  <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">5</span> <span class="p">;</span></div><div class='line' id='LC231'><br/></div><div class='line' id='LC232'><span class="c1">--</span></div><div class='line' id='LC233'><span class="c1">-- Volcado de datos para la tabla `usuario`</span></div><div class='line' id='LC234'><span class="c1">--</span></div><div class='line' id='LC235'><br/></div><div class='line' id='LC236'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="o">`</span><span class="n">usuario</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nombre</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">nickname</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">contrase</span><span class="err">ñ</span><span class="n">a</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">telefono</span><span class="o">`</span><span class="p">)</span> <span class="k">VALUES</span></div><div class='line' id='LC237'><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="s1">&#39;Juan Sebastian Ocampo O.&#39;</span><span class="p">,</span> <span class="s1">&#39;capriatto&#39;</span><span class="p">,</span> <span class="s1">&#39;pass&#39;</span><span class="p">,</span> <span class="s1">&#39;2198873&#39;</span><span class="p">),</span></div><div class='line' id='LC238'><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s1">&#39;Juan Camilo Zuluaga Serna&#39;</span><span class="p">,</span> <span class="s1">&#39;jucazuse&#39;</span><span class="p">,</span> <span class="s1">&#39;pass&#39;</span><span class="p">,</span> <span class="s1">&#39;2190426&#39;</span><span class="p">),</span></div><div class='line' id='LC239'><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="s1">&#39;Fabian Garcia&#39;</span><span class="p">,</span> <span class="s1">&#39;fabiancho&#39;</span><span class="p">,</span> <span class="s1">&#39;pass&#39;</span><span class="p">,</span> <span class="s1">&#39;2197873&#39;</span><span class="p">),</span></div><div class='line' id='LC240'><span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="s1">&#39;usuario genérico&#39;</span><span class="p">,</span> <span class="s1">&#39;z&#39;</span><span class="p">,</span> <span class="s1">&#39;z&#39;</span><span class="p">,</span> <span class="s1">&#39;2190000&#39;</span><span class="p">);</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC243'><br/></div><div class='line' id='LC244'><span class="c1">--</span></div><div class='line' id='LC245'><span class="c1">-- Estructura de tabla para la tabla `venta`</span></div><div class='line' id='LC246'><span class="c1">--</span></div><div class='line' id='LC247'><br/></div><div class='line' id='LC248'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">venta</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC249'>&nbsp;&nbsp;<span class="o">`</span><span class="n">id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></div><div class='line' id='LC250'>&nbsp;&nbsp;<span class="o">`</span><span class="n">hora_venta</span><span class="o">`</span> <span class="n">time</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC251'>&nbsp;&nbsp;<span class="o">`</span><span class="n">fecha_venta</span><span class="o">`</span> <span class="nb">date</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC252'>&nbsp;&nbsp;<span class="o">`</span><span class="n">productos</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC253'>&nbsp;&nbsp;<span class="o">`</span><span class="n">valor_venta</span><span class="o">`</span> <span class="n">double</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC254'>&nbsp;&nbsp;<span class="o">`</span><span class="n">usuario_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">NOT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC255'>&nbsp;&nbsp;<span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span><span class="o">`</span><span class="n">usuario_id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC256'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_venta_usuario1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">usuario_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC257'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span> <span class="n">AUTO_INCREMENT</span><span class="o">=</span><span class="mi">1</span> <span class="p">;</span></div><div class='line' id='LC258'><br/></div><div class='line' id='LC259'><span class="c1">-- --------------------------------------------------------</span></div><div class='line' id='LC260'><br/></div><div class='line' id='LC261'><span class="c1">--</span></div><div class='line' id='LC262'><span class="c1">-- Estructura de tabla para la tabla `venta-producto`</span></div><div class='line' id='LC263'><span class="c1">--</span></div><div class='line' id='LC264'><br/></div><div class='line' id='LC265'><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">NOT</span> <span class="k">EXISTS</span> <span class="o">`</span><span class="n">venta</span><span class="o">-</span><span class="n">producto</span><span class="o">`</span> <span class="p">(</span></div><div class='line' id='LC266'>&nbsp;&nbsp;<span class="o">`</span><span class="n">venta_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="o">`</span><span class="n">venta_usuario_id</span><span class="o">`</span> <span class="nb">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC268'>&nbsp;&nbsp;<span class="o">`</span><span class="n">producto_id</span><span class="o">`</span> <span class="nb">char</span><span class="p">(</span><span class="mi">3</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></div><div class='line' id='LC269'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_venta_has_producto_producto1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">producto_id</span><span class="o">`</span><span class="p">),</span></div><div class='line' id='LC270'>&nbsp;&nbsp;<span class="k">KEY</span> <span class="o">`</span><span class="n">fk_venta_has_producto_venta1_idx</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">venta_id</span><span class="o">`</span><span class="p">,</span><span class="o">`</span><span class="n">venta_usuario_id</span><span class="o">`</span><span class="p">)</span></div><div class='line' id='LC271'><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></div><div class='line' id='LC272'><br/></div><div class='line' id='LC273'><span class="c1">--</span></div><div class='line' id='LC274'><span class="c1">-- Restricciones para tablas volcadas</span></div><div class='line' id='LC275'><span class="c1">--</span></div><div class='line' id='LC276'><br/></div><div class='line' id='LC277'><span class="c1">--</span></div><div class='line' id='LC278'><span class="c1">-- Filtros para la tabla `enfermedad`</span></div><div class='line' id='LC279'><span class="c1">--</span></div><div class='line' id='LC280'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">enfermedad</span><span class="o">`</span></div><div class='line' id='LC281'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_enfermedad_gravedad1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">gravedad_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">gravedad</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">;</span></div><div class='line' id='LC282'><br/></div><div class='line' id='LC283'><span class="c1">--</span></div><div class='line' id='LC284'><span class="c1">-- Filtros para la tabla `enfermedad_sintoma`</span></div><div class='line' id='LC285'><span class="c1">--</span></div><div class='line' id='LC286'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">enfermedad_sintoma</span><span class="o">`</span></div><div class='line' id='LC287'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_enfermedad_has_sintoma_enfermedad1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">enfermedad_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">enfermedad</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">,</span></div><div class='line' id='LC288'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_enfermedad_has_sintoma_sintoma1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">sintoma_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">sintoma</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">;</span></div><div class='line' id='LC289'><br/></div><div class='line' id='LC290'><span class="c1">--</span></div><div class='line' id='LC291'><span class="c1">-- Filtros para la tabla `producto`</span></div><div class='line' id='LC292'><span class="c1">--</span></div><div class='line' id='LC293'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">producto</span><span class="o">`</span></div><div class='line' id='LC294'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_producto_categoria</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">categoria_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">categoria</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">,</span></div><div class='line' id='LC295'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_producto_proveedor1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">proveedor_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">proveedor</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">;</span></div><div class='line' id='LC296'><br/></div><div class='line' id='LC297'><span class="c1">--</span></div><div class='line' id='LC298'><span class="c1">-- Filtros para la tabla `venta`</span></div><div class='line' id='LC299'><span class="c1">--</span></div><div class='line' id='LC300'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">venta</span><span class="o">`</span></div><div class='line' id='LC301'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_venta_usuario1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">usuario_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">usuario</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">;</span></div><div class='line' id='LC302'><br/></div><div class='line' id='LC303'><span class="c1">--</span></div><div class='line' id='LC304'><span class="c1">-- Filtros para la tabla `venta-producto`</span></div><div class='line' id='LC305'><span class="c1">--</span></div><div class='line' id='LC306'><span class="k">ALTER</span> <span class="k">TABLE</span> <span class="o">`</span><span class="n">venta</span><span class="o">-</span><span class="n">producto</span><span class="o">`</span></div><div class='line' id='LC307'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_venta_has_producto_producto1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">producto_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">producto</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">,</span></div><div class='line' id='LC308'>&nbsp;&nbsp;<span class="k">ADD</span> <span class="k">CONSTRAINT</span> <span class="o">`</span><span class="n">fk_venta_has_producto_venta1</span><span class="o">`</span> <span class="k">FOREIGN</span> <span class="k">KEY</span> <span class="p">(</span><span class="o">`</span><span class="n">venta_id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">venta_usuario_id</span><span class="o">`</span><span class="p">)</span> <span class="k">REFERENCES</span> <span class="o">`</span><span class="n">venta</span><span class="o">`</span> <span class="p">(</span><span class="o">`</span><span class="n">id</span><span class="o">`</span><span class="p">,</span> <span class="o">`</span><span class="n">usuario_id</span><span class="o">`</span><span class="p">)</span> <span class="k">ON</span> <span class="k">DELETE</span> <span class="k">NO</span> <span class="n">ACTION</span> <span class="k">ON</span> <span class="k">UPDATE</span> <span class="k">NO</span> <span class="n">ACTION</span><span class="p">;</span></div><div class='line' id='LC309'><br/></div><div class='line' id='LC310'><span class="cm">/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */</span><span class="p">;</span></div><div class='line' id='LC311'><span class="cm">/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */</span><span class="p">;</span></div><div class='line' id='LC312'><span class="cm">/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */</span><span class="p">;</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.11875s from github-fe139-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/Capriatto/Farmacox/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

