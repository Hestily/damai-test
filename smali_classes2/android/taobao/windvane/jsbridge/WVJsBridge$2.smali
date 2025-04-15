.class Landroid/taobao/windvane/jsbridge/WVJsBridge$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVJsBridge;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->val$pageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;->val$pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    return-void
.end method
