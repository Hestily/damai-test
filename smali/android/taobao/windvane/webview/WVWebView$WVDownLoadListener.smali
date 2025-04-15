.class Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/webview/WVWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WVDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    const-string v0, "WVWebView"

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download start, url: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contentDisposition: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mimetype: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " contentLength: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-boolean p2, p2, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    if-nez p2, :cond_1

    const-string p1, "DownloadListener is not support for webview."

    .line 4
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object p1, p1, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;->this$0:Landroid/taobao/windvane/webview/WVWebView;

    iget-object p1, p1, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const/4 p2, 0x1

    const-string/jumbo p3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u8bbe\u5907\u627e\u4e0d\u5230\u76f8\u5e94\u7684\u7a0b\u5e8f"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "DownloadListener not found activity to open this url."

    .line 10
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
