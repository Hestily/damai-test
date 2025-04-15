.class enum Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "JSMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum pause:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum play:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum seekTo:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum setMuted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$1;

    const-string/jumbo v1, "setMuted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->setMuted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 2
    new-instance v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$2;

    const-string/jumbo v3, "play"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->play:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 3
    new-instance v3, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$3;

    const-string/jumbo v5, "pause"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->pause:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 4
    new-instance v5, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$4;

    const-string/jumbo v7, "seekTo"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->seekTo:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    invoke-virtual {v0}, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    return-object v0
.end method


# virtual methods
.method public doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
