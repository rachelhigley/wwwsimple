<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <title><?php echo $options['title']; ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="<?php echo $options['tagline'];?>" />
    <meta name="author" content="<?php echo $options['title']; ?>">
    <?php if ($options['colors']) { ?>
    <link rel="icon" href="<?php echo $base_url ?>/img/favicon.png" type="image/x-icon">
    <?php } else { ?>
    <link rel="icon" href="<?php echo $base_url ?>/img/favicon-<?php echo $options['theme'];?>.png" type="image/x-icon">
    <?php } ?>
    <!-- Mobile -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100' rel='stylesheet' type='text/css'>

    <!-- LESS -->
    <?php if ($options['colors']) { ?>
        <style type="text/less">
            <?php foreach($options['colors'] as $k => $v) { ?>
            @<?php echo $k;?>: <?php echo $v;?>;
            <?php } ?>
            @import "<?php echo $base_url ?>/less/import/daux-base.less";
        </style>
        <script src="<?php echo $base_url ?>/js/less.min.js"></script>
    <?php } else { ?>
        <link rel="stylesheet" href="<?php echo $base_url ?>/css/daux-<?php echo $options['theme'];?>.min.css">
    <?php } ?>
</head>
<body>
    <!-- Docs -->
    <?php if ($options['repo']) { ?>
        <a href="https://github.com/<?php echo $options['repo']; ?>" target="_blank" id="github-ribbon"><img src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png" alt="Fork me on GitHub"></a>
    <?php } ?>
    <div class="container-fluid fluid-height wrapper">
        <div class="navbar navbar-fixed-top">
            <div class="container-fluid">
                <a class="brand navbar-brand pull-left" href="<?php echo $base_url ?><?php echo $homepage_url;?>"><?php echo $options['title']; ?></a>
                <p class="navbar-text pull-right">
                   <a href="/php_documention">PHP Documentation</a>
                </p>
            </div>
        </div>

    <?php if ($homepage) { ?>
        <div class="homepage-hero well container-fluid">
            <div class="container">
                <div class="row">
                    <div class="text-center col-sm-12">
                        <h1 id="logo"><a href="/">
                            <object class="logo" data="images/logo.svg" width="230" height="200"  type="image/svg+xml">
                                <img class="logo" src="images/logo.png" width="230" height="200"  alt="Framework Simple" />
                            </object>
                            <h1><a href="<?php echo $base_url ?><?php echo $homepage_url;?>"><?php echo $options['title']; ?></a></h1>
                            <?php if ($options['tagline']) { ?>
                            <h2><?php echo $options['tagline'];?></h2>
                        <?php } ?>
                        </h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="hero-buttons container-fluid">
            <div class="container">
                <div class="row">
                    <div class="text-center col-sm-12">

                        <?php if (count($options['languages']) > 0) { ?>
                            <?php foreach ($options['languages'] as $language_key => $language_name) { ?>
                            <a href="<?php echo $base_url . "/" . $language_key . "/"; ?>" class="btn btn-primary btn-hero">
                                <?php echo $language_name; ?>
                            </a>
                            <?php } ?>
                        <?php } else { ?>
                        <a href="<?php echo $docs_url;?>" class="btn btn-secondary btn-hero">
                            View Documentation
                        </a>
                        <?php } ?>
                         <?php if ($options['repo']) { ?>
                            <a href="https://github.com/<?php echo $options['repo']; ?>" class="btn btn-primary btn-hero">
                                View On GitHub
                            </a>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="homepage-content container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <?php echo $page['html'];?>
                    </div>
                </div>
            </div>
        </div>

        <div class="homepage-footer well container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <p>&copy; 2013 Copyright Framework Simple&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;Developed by <a href="http://rachelhigley.com">Rachel Higley</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;Documention Generated by Daux.io</p>
                    </div>
                </div>
            </div>
        </div>

    <?php } else { ?>
        <!-- Docs -->
        <?php if ($options['repo']) { ?>
            <a href="https://github.com/<?php echo $options['repo']; ?>" target="_blank" id="github-ribbon"><img src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png" alt="Fork me on GitHub"></a>
        <?php } ?>
        <div class="container-fluid fluid-height wrapper">
            <div class="navbar navbar-fixed-top">
                <div class="container-fluid">
                    <a class="brand navbar-brand pull-left" href="<?php echo $base_url ?><?php echo $homepage_url;?>"><?php echo $options['title']; ?></a>
                    <p class="navbar-text pull-right">
                       <a href="/php_documention">PHP Documentation</a>
                    </p>
                </div>
            </div>

            <div class="row columns content">
                <div class="left-column article-tree col-sm-3">
                    <!-- For Mobile -->
                    <div class="responsive-collapse">
                        <button type="button" class="btn btn-sidebar" id="menu-spinner-button">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="sub-nav-collapse" class="sub-nav-collapse">
                        <!-- Navigation -->
                        <?php echo build_nav($tree, $url_params); ?>

                        <?php if (!empty($options['links']) || !empty($options['twitter'])) { ?>
                            <div class="well well-sidebar">
                                <!-- Links -->
                                <?php foreach($options['links'] as $name => $url) { ?>
                                    <a href="<?php echo $url;?>" target="_blank"><?php echo $name;?></a><br>
                                <?php } ?>
                                <?php if ($options['toggle_code']) { ?>
                                    <a href="#" id="toggleCodeBlockBtn" onclick="toggleCodeBlocks();">Show Code Blocks Inline</a><br>
                                <?php } ?>
                                <!-- Twitter -->
                                <?php foreach($options['twitter'] as $handle) { ?>
                                    <div class="twitter">
                                        <iframe allowtransparency="true" frameborder="0" scrolling="no" style="width:180px; height:20px;" src="https://platform.twitter.com/widgets/follow_button.html?screen_name=<?php echo $handle;?>&amp;show_count=false"></iframe>
                                    </div>
                                <?php } ?>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="right-column <?php echo ($options['float']?'float-view':''); ?> content-area col-sm-9">
                    <div class="content-page">
                        <article>
                            <?php if($options['date_modified'] && isset($page['modified'])) { ?>
                                <div class="page-header sub-header clearfix">
                                    <h1><?php echo $page['title'];?>
                                        <?php if($options["file_editor"]) { ?>
                                            <a href="javascript:;" id="editThis" class="btn">Edit this page</a>
                                        <?php } ?>
                                    </h1>
                                        <span style="float: left; font-size: 10px; color: gray;">
                                            <?php echo date("l, F j, Y", $page['modified']);?>
                                        </span>
                                        <span style="float: right; font-size: 10px; color: gray;">
                                            <?php echo date ("g:i A", $page['modified']);?>
                                        </span>
                                </div>
                            <?php } else { ?>
                                <div class="page-header">
                                    <h1><?php echo (isset($page['title']))?$page['title']:$options['title'];?></h1>
                                        <?php if($options["file_editor"]) { ?>
                                            <a href="javascript:;" id="editThis" class="btn">Edit this page</a>
                                        <?php } ?>
                                    </h1>
                                </div>
                            <?php } ?>
                            <?php echo $page['html'];?>
                            <?php if($options["file_editor"]) { ?>
                                <div class="editor <?php if(!$options['date_modified']) { ?>paddingTop<?php } ?>">
                                    <h3>You are editing <?php echo $page['path']; ?>&nbsp;<a href="javascript:;" class="closeEditor btn btn-warning">Close</a></h3>
                                    <div class="navbar navbar-inverse navbar-default navbar-fixed-bottom" role="navigation">
                                        <div class="navbar-inner">
                                            <a href="javascript:;" class="save_editor btn btn-primary navbar-btn pull-right">Save file</a>
                                        </div>
                                    </div>
                                    <textarea id="markdown_editor"><?php echo $page['markdown'];?></textarea>
                                    <div class="clearfix"></div>
                                </div>
                            <?php } ?>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>

<?php if ($options['google_analytics']) { ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', '<?php echo $options['google_analytics'];?>', '<?php echo (isset($_SERVER['HTTP_HOST']))?$_SERVER['HTTP_HOST']:''; ?>');
  ga('send', 'pageview');

</script>
<?php } ?>
<?php if ($options['piwik_analytics']) { ?>
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(["trackPageView"]);
  _paq.push(["enableLinkTracking"]);

  (function() {
    var u=(("https:" == document.location.protocol) ? "https" : "http") + "://<?php echo $options['piwik_analytics'];?>/";
    _paq.push(["setTrackerUrl", u+"piwik.php"]);
    _paq.push(["setSiteId", <?php echo $options['piwik_analytics_id'];?>]);
    var d=document, g=d.createElement("script"), s=d.getElementsByTagName("script")[0]; g.type="text/javascript";
    g.defer=true; g.async=true; g.src=u+"piwik.js"; s.parentNode.insertBefore(g,s);
  })();
</script>
<?php } ?>


    <!-- hightlight.js -->
    <script src="<?php echo $base_url ?>/js/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>

    <!-- Navigation -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

    <?php if($options["file_editor"]) { ?>
    <!-- Front end file editor -->
    <script src="<?php echo $base_url ?>/js/editor.js"></script>
    <?php } ?>
    <script>
    if (typeof jQuery == 'undefined') {
        document.write(unescape("%3Cscript src='<?php echo $base_url ?>/js/jquery-1.11.0.min.js' type='text/javascript'%3E%3C/script%3E"));
      }
    </script>
    <script src="<?php echo $base_url ?>/js/bootstrap.min.js"></script>
    <script src="<?php echo $base_url ?>/js/custom.js"></script>
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</body>
</html>
