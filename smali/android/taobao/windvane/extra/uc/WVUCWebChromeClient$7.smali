.class Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field final synthetic val$res:Lcom/uc/webview/export/JsResult;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;Lcom/uc/webview/export/JsResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;->val$res:Lcom/uc/webview/export/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient$7;->val$res:Lcom/uc/webview/export/JsResult;

    invoke-interface {p1}, Lcom/uc/webview/export/JsResult;->cancel()V

    return-void
.end method
