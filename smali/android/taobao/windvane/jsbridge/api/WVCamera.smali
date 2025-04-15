.class public Landroid/taobao/windvane/jsbridge/api/WVCamera;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;
    }
.end annotation


# static fields
.field public static final LOCAL_IMAGE:Ljava/lang/String; = "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

.field private static final TAG:Ljava/lang/String; = "WVCamera"

.field public static maxLength:I = 0x400

.field private static multiActivityClass:Ljava/lang/String;

.field private static uploadServiceClass:Ljava/lang/String;


# instance fields
.field private lastAccess:J

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mLocalPath:Ljava/lang/String;

.field private mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field protected popupClickListener:Landroid/view/View$OnClickListener;

.field private uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

.field private useCN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    const-string/jumbo v0, "\u62cd\u7167"

    const-string/jumbo v1, "\u4ece\u76f8\u518c\u9009\u62e9"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->popupClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Landroid/taobao/windvane/jsbridge/api/WVCamera;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return p1
.end method

.method static synthetic access$102(Landroid/taobao/windvane/jsbridge/api/WVCamera;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    return p1
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamaraInternal()V

    return-void
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhotoInternal()V

    return-void
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$500(Landroid/taobao/windvane/jsbridge/api/WVCamera;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamara()V

    return-void
.end method

.method static synthetic access$700(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhoto()V

    return-void
.end method

.method static synthetic access$800(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$900(Landroid/taobao/windvane/jsbridge/api/WVCamera;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->takePhotoSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void
.end method

.method private chosePhoto()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceGalleryPermissionOfStorageWrite:Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v0, :cond_1

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v3, "NO_PERMISSION"

    invoke-direct {v1, v2, v3}, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhotoInternal()V

    :goto_2
    return-void
.end method

.method private chosePhotoInternal()V
    .locals 5

    const-string v0, "WVCamera"

    const-string/jumbo v1, "start to pick photo from system album."

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "msg"

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.taobao.taobao"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string/jumbo v2, "mutipleSelection only support in taobao!"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "taobao://go/ImgFileListActivity"

    .line 9
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 10
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget v2, v2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    const-string v3, "maxSelect"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xfa3

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0xfa2

    .line 12
    :goto_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 13
    :try_start_0
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v2, "WVCameraFilter"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from-webview-id"

    .line 15
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "ERROR_STARTACTIVITY"

    .line 19
    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7

    const-string v0, "localUrl"

    .line 1
    iget-boolean v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    sub-long v3, v1, v3

    .line 4
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    const-wide/16 v1, 0x3e8

    const-string v5, "WVCamera"

    cmp-long v6, v3, v1

    if-gez v6, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "takePhoto, call this method too frequent,  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 7
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    .line 8
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "v"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "bizCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "extraData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraData:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "extraInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;

    .line 15
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "identifier"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "maxSelect"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    .line 17
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "mutipleSelection"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "needZoom"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    .line 19
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iput-boolean v3, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    const-string/jumbo v2, "needLogin"

    const/4 v3, 0x0

    .line 20
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    .line 21
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "needBase64"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    .line 22
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "reducePermission"

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->allowReducePermission()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    const-string v1, "maxLength"

    const/16 v2, 0x400

    .line 23
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    const-string v1, "lang"

    .line 24
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 27
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "takePhoto fail, params: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 29
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHOTO_INIT_ERROR ,params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method private isHasCamaraPermission()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private openCamara()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$3;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    new-instance v1, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v3, "NO_PERMISSION"

    invoke-direct {v1, v2, v3}, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->requestCameraPermission(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamaraInternal()V

    :goto_1
    return-void
.end method

.method private openCamaraInternal()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->isHasCamaraPermission()Z

    move-result v0

    const-string/jumbo v1, "msg"

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "NO_PERMISSION"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "WVCamera"

    const-string/jumbo v2, "start to open system camera."

    .line 6
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 9
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAMERA_OPEN_ERROR"

    if-nez v3, :cond_3

    .line 10
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "NO_CACHEDIR"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_2
    return-void

    .line 15
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 17
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 18
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v3, v3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Landroid/taobao/windvane/file/WVFileUtils;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_5

    .line 20
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "image uri is null,check provider auth"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_5
    const-string/jumbo v1, "output"

    .line 24
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v3, "from"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 27
    :try_start_0
    check-cast v1, Landroid/app/Activity;

    const/16 v3, 0xfa1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_6
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "WVCameraFilter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "from-webview-id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static registerMultiActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->multiActivityClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static registerMultiActivityName(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->multiActivityClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static registerUploadService(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/api/WVUploadService;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private requestCameraPermission(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->reduceCameraPermissionOfStorage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "android.permission.CAMERA"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private takePhotoSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 7

    .line 1
    iget v0, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "PIC_PATH_ERROR"

    .line 7
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 11
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 12
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "base64Data"

    const/16 v3, 0x400

    const-string v4, "WVCamera"

    const-string v5, "localPath"

    const-string/jumbo v6, "url"

    if-eqz v1, :cond_5

    .line 13
    iget-boolean v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-nez v1, :cond_2

    return-void

    .line 14
    :cond_2
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v5, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz p2, :cond_4

    .line 18
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "images"

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 21
    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v5, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-boolean v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz v1, :cond_6

    .line 25
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 26
    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " localPath:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 29
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pic not upload and call success, retString: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string/jumbo v0, "write photo io error."

    const-string v1, "WVCamera"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v3, v3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    if-eqz v3, :cond_2

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/util/ImageTool;->readRotationDegree(Ljava/lang/String;)I

    move-result v3

    .line 3
    sget v4, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    invoke-static {p1, v4}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_1

    :try_start_1
    const-string p2, "bm == null, fail"

    .line 4
    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    .line 7
    :cond_1
    :try_start_2
    sget v4, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    invoke-static {p1, v4}, Landroid/taobao/windvane/util/ImageTool;->zoomBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto/16 :goto_3

    :catch_0
    move-object v2, p1

    goto/16 :goto_1

    .line 9
    :cond_2
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 10
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 13
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string/jumbo v6, "msg"

    if-nez v5, :cond_4

    .line 15
    :try_start_4
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read file : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "READ_FILE_ERROR"

    .line 17
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 19
    :cond_4
    invoke-static {v4, v3}, Landroid/taobao/windvane/file/FileManager;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "Failed to copy file!"

    .line 21
    invoke-virtual {p1, v6, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "COPY_FILE_ERROR"

    .line 22
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :cond_5
    move-object v5, v2

    .line 24
    :goto_0
    :try_start_5
    new-instance v6, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v6}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    .line 25
    iget-object p1, p3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const-string p1, "image/jpeg"

    .line 26
    iput-object p1, v6, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v7, 0x9a7ec800L

    add-long/2addr v3, v7

    .line 28
    iput-wide v3, v6, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 29
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write pic to file, name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    :cond_6
    :try_start_6
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;

    move-object v3, p1

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/graphics/Bitmap;Landroid/taobao/windvane/cache/WVFileInfo;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v2, v5

    goto :goto_3

    :catch_1
    move-object v2, v5

    goto :goto_1

    :catchall_2
    move-exception p2

    goto :goto_3

    .line 32
    :catch_2
    :goto_1
    :try_start_7
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string/jumbo p2, "reason"

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "WRITE_PHOTO_ERROR"

    .line 34
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 36
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_7

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_8
    throw p2
.end method


# virtual methods
.method public declared-synchronized confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 2
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "path"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    const-string/jumbo v3, "v"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    const-string v3, "bizCode"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    const-string v3, "extraInfo"

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    iput-object v2, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "HY_PARAM_ERR"

    invoke-direct {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "WVCamera"

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmUploadPhoto fail, params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "HY_PARAM_ERR"

    .line 17
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string/jumbo v1, "msg"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAM_ERROR :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    const-string/jumbo v0, "takePhoto"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "NO_PERMISSION"

    if-nez p1, :cond_0

    .line 3
    :try_start_1
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$1;

    invoke-direct {p1, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    new-instance p2, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;

    invoke-direct {p2, p3, v0}, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->requestCameraPermission(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->isAlive:Z

    .line 5
    invoke-direct {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->reducePermission:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->takePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$2;

    invoke-direct {p1, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    new-instance p2, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;

    invoke-direct {p2, p3, v0}, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->requestCameraPermission(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "confirmUploadPhoto"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    const-string v4, "WVCamera"

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePhoto callback, requestCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";resultCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v5, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    const-string/jumbo v6, "pick photo fail, picture not exist, picturePath: "

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "CANCELED_BY_USER"

    const-string/jumbo v11, "msg"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-eqz p3, :cond_5

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fileList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 7
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 9
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_d

    .line 10
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 11
    invoke-static {v11}, Landroid/taobao/windvane/file/FileAccesser;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v12, v1, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 15
    invoke-static {v13}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v14, "url"

    .line 17
    iget-object v15, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "localPath"

    .line 18
    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "url:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " localPath:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-ne v10, v0, :cond_3

    .line 22
    iput-object v3, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    goto :goto_2

    .line 23
    :cond_3
    iput-boolean v8, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 24
    :goto_2
    invoke-direct {v1, v11, v13, v12}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    const-wide/16 v11, 0x64

    .line 25
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v0

    .line 26
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 27
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 28
    :cond_5
    :goto_4
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :pswitch_1
    if-ne v2, v7, :cond_b

    if-eqz p3, :cond_b

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v7, "file"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_6
    const-string v3, "_data"

    .line 33
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 34
    :try_start_2
    iget-object v7, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v0

    move-object v12, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    .line 35
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 36
    aget-object v0, v3, v8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 37
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 38
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pick photo fail, Cursor is empty, imageUri: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz v7, :cond_9

    .line 39
    :goto_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v7, v2

    .line 40
    :goto_7
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query fail:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_9

    goto :goto_6

    :catchall_2
    move-exception v0

    if-eqz v7, :cond_8

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_8
    throw v0

    .line 43
    :cond_9
    :goto_8
    invoke-static {v2}, Landroid/taobao/windvane/file/FileAccesser;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v3, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v0, v1, v3}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-direct {v1, v2, v3, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void

    .line 49
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call pick photo fail. resultCode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_9

    :pswitch_2
    if-ne v2, v7, :cond_c

    .line 53
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    iget-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto :goto_9

    .line 54
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call takePhoto fail. resultCode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_d
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized takePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->fixCameraPermission:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    const-string p1, "camera"

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamara()V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "photo"

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhoto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    const-string p2, "Take pictures"

    aput-object p2, p1, v0

    const/4 p2, 0x1

    const-string v0, "Select from album"

    .line 13
    aput-object v0, p1, p2

    .line 14
    :cond_4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    if-nez p1, :cond_5

    .line 15
    new-instance p1, Landroid/taobao/windvane/view/PopupWindowController;

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->popupClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 16
    :cond_5
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-virtual {p1}, Landroid/taobao/windvane/view/PopupWindowController;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "WVCamera"

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public takePhotoPlus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0, p2, p2, p1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "WVCamera"

    const-string/jumbo p2, "takePhotoPlus fail, params error"

    .line 4
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    if-nez v0, :cond_0

    sget-object v0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create upload service error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVCamera"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->doUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    :cond_1
    return-void
.end method
