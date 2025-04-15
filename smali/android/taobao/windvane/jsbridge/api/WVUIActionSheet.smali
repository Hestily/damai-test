.class public Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIActionSheet"


# instance fields
.field private _index:Ljava/lang/String;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mPopupWindowController:Landroid/taobao/windvane/view/PopupWindowController;

.field private popupClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 3
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->popupClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->_index:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mPopupWindowController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string/jumbo v0, "show"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->show(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-void
.end method

.method public declared-synchronized show(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_index"

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->_index:Ljava/lang/String;

    const-string v3, "buttons"

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    const-string v0, "WVUIActionSheet"

    const-string v1, "WVUIDialog: ActionSheet is too long, limit 8"

    .line 7
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "HY_PARAM_ERR"

    .line 9
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string/jumbo v1, "msg"

    const-string v2, "ActionSheet is too long. limit 8"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v3, v2

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v0, "WVUIActionSheet"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 18
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :cond_2
    move-object v3, v1

    move-object v4, v3

    .line 21
    :goto_1
    :try_start_4
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :try_start_5
    new-instance p2, Landroid/taobao/windvane/view/PopupWindowController;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->popupClickListener:Landroid/view/View$OnClickListener;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;->mPopupWindowController:Landroid/taobao/windvane/view/PopupWindowController;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    :try_start_6
    invoke-virtual {p2}, Landroid/taobao/windvane/view/PopupWindowController;->show()V

    const-string p1, "WVUIActionSheet"

    const-string p2, "ActionSheet: show"

    .line 24
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catch_1
    move-exception p2

    :try_start_7
    const-string v0, "WVUIActionSheet"

    .line 26
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "errMsg"

    .line 28
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
