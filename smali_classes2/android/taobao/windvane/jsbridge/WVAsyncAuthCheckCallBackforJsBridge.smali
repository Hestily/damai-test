.class public Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck$AsyncAuthCheckCallBack;


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WVAsyncAuthCheckCallBackforJsBridge"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callBackFail(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;->TAG:Ljava/lang/String;

    const-string p2, "Async preprocessor callBackSuccess ,"

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callBackSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 0

    .line 1
    invoke-static {p2, p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;->TAG:Ljava/lang/String;

    const-string p2, "Async preprocessor callBackSuccess "

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
