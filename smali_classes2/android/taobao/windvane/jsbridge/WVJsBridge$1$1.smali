.class Landroid/taobao/windvane/jsbridge/WVJsBridge$1$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->onReceiveValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/windvane/jsbridge/WVJsBridge$1;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVJsBridge$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1$1;->this$1:Landroid/taobao/windvane/jsbridge/WVJsBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1$1;->this$1:Landroid/taobao/windvane/jsbridge/WVJsBridge$1;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->val$pageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    return-void
.end method
