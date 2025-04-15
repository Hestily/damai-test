.class final Landroid/taobao/windvane/webview/WVURLFilter$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$finalUrl:Ljava/lang/String;

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$finalUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getPageLoadedCount()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$2;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->back()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
