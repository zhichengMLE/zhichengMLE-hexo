{% if page.copyright %}
<div class="my_post_copyright">
  <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>

  <!-- JS库 sweetalert 可修改路径 -->
  <script type="text/javascript" src="http://jslibs.wuxubj.cn/sweetalert_mini/jquery-1.7.1.min.js"></script>
  <script src="http://jslibs.wuxubj.cn/sweetalert_mini/sweetalert.min.js"></script>
  <link rel="stylesheet" type="text/css" href="http://jslibs.wuxubj.cn/sweetalert_mini/sweetalert.mini.css">
  <p><span>Title:</span><a href="{{ url_for(page.path) }}">{{ page.title }}</a></p>
  <p><span>Author:</span><a href="/" title="Goto {{ theme.author }} ' Personal Blog">{{ theme.author }}</a></p>
  <p><span>Posted:</span>{{ page.date.format("YYYY-MM-DD - HH:MM") }}</p>
  <p><span>Updated:</span>{{ page.updated.format("YYYY-MM-DD - HH:MM") }}</p>
  <p><span>URL:</span><a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a>
    <span class="copy-path"  title="Click to copy"><i class="fa fa-clipboard" data-clipboard-text="{{ page.permalink }}"  aria-label="Copied！"></i></span>
  </p>
  <p><span>CC:</span><i class="fa fa-creative-commons"></i> <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" title="Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)">(CC BY-NC-ND 4.0)</a> Please quote this as reference upon reproduction of this article.</p>  
</div>

<script> 
    var clipboard = new Clipboard('.fa-clipboard');
    clipboard.on('success', $(function(){
      $(".fa-clipboard").click(function(){
        swal({   
          title: "",   
          text: 'Copied',   
          html: false,
          timer: 500,   
          showConfirmButton: false
        });
      });
    }));  
</script>
{% endif %}