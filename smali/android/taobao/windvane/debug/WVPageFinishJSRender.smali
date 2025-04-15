.class public Landroid/taobao/windvane/debug/WVPageFinishJSRender;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/debug/WVPageFinishJSRender$WVDevelopToolWebViewClientFilter;
    }
.end annotation


# static fields
.field private static jsContent:Ljava/lang/String;

.field private static renderJs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/debug/WVPageFinishJSRender$WVDevelopToolWebViewClientFilter;

    invoke-direct {v1}, Landroid/taobao/windvane/debug/WVPageFinishJSRender$WVDevelopToolWebViewClientFilter;-><init>()V

    sget v2, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->renderJs:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->jsContent:Ljava/lang/String;

    return-object v0
.end method

.method public static clearJsRender()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->renderJs:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->jsContent:Ljava/lang/String;

    return-void
.end method

.method public static isRenderJs()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->renderJs:Z

    return v0
.end method

.method public static setJsContent(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->renderJs:Z

    .line 3
    sput-object p0, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->jsContent:Ljava/lang/String;

    :cond_0
    return-void
.end method
