.class final Landroid/taobao/windvane/webview/WVURLFilter$1;
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

.field final synthetic val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$1;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVURLFilter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$1;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getPageLoadedCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$1;->val$wvWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->refresh()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVURLFilter$1;->val$context:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
