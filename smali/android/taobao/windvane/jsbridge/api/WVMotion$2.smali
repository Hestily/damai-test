.class Landroid/taobao/windvane/jsbridge/api/WVMotion$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVMotion;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->listenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    return-void
.end method
