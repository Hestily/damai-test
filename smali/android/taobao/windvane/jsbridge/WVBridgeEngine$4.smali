.class Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->valuateJavascriptOnUiThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$300(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;->val$js:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method
