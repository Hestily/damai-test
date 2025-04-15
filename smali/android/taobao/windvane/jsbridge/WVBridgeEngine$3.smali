.class Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;->val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;->val$wvCallMethodContext:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    return-void
.end method
