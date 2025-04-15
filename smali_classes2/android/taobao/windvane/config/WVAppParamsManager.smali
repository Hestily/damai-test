.class public Landroid/taobao/windvane/config/WVAppParamsManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static Instance:Landroid/taobao/windvane/config/WVAppParamsManager;


# instance fields
.field private params:Landroid/taobao/windvane/config/WVAppParams;

.field private paramsSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVAppParamsManager;->Instance:Landroid/taobao/windvane/config/WVAppParamsManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/config/WVAppParamsManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVAppParamsManager;->Instance:Landroid/taobao/windvane/config/WVAppParamsManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/config/WVAppParamsManager;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVAppParamsManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVAppParamsManager;->Instance:Landroid/taobao/windvane/config/WVAppParamsManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/config/WVAppParamsManager;->Instance:Landroid/taobao/windvane/config/WVAppParamsManager;

    return-object v0
.end method


# virtual methods
.method public getParams()Landroid/taobao/windvane/config/WVAppParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVAppParamsManager;->params:Landroid/taobao/windvane/config/WVAppParams;

    return-object v0
.end method

.method public isParamsSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParamsManager;->paramsSet:Z

    return v0
.end method

.method public setParams(Landroid/taobao/windvane/config/WVAppParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/config/WVAppParamsManager;->params:Landroid/taobao/windvane/config/WVAppParams;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/taobao/windvane/config/WVAppParamsManager;->paramsSet:Z

    :cond_0
    return-void
.end method
