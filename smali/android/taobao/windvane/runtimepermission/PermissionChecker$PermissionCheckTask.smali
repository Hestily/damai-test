.class public Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/runtimepermission/PermissionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCheckTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private permissionDeniedCallBack:Landroid/taobao/windvane/jsbridge/IPermissionDeniedCallBack;

.field private permissionGrantedRunnable:Ljava/lang/Runnable;

.field private permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissions:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    :try_start_0
    iget-object v5, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :catchall_0
    iget-object v0, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissionGrantedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissionDeniedCallBack:Landroid/taobao/windvane/jsbridge/IPermissionDeniedCallBack;

    invoke-interface {v1, v0}, Landroid/taobao/windvane/jsbridge/IPermissionDeniedCallBack;->onPermissionDenied(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public setTaskOnPermissionDenied(Landroid/taobao/windvane/jsbridge/IPermissionDeniedCallBack;)Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissionDeniedCallBack:Landroid/taobao/windvane/jsbridge/IPermissionDeniedCallBack;

    return-object p0
.end method

.method public setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;
    .locals 1

    const-string/jumbo v0, "permissionGrantedRunnable is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/runtimepermission/PermissionChecker$PermissionCheckTask;->permissionGrantedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method
