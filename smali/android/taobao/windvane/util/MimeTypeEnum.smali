.class public final enum Landroid/taobao/windvane/util/MimeTypeEnum;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/util/MimeTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;


# instance fields
.field private mimeType:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v1, "JS"

    const/4 v2, 0x0

    const-string v3, "js"

    const-string v4, "application/x-javascript"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v1, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v3, "CSS"

    const/4 v4, 0x1

    const-string v5, "css"

    const-string/jumbo v6, "text/css"

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v3, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v5, "JPG"

    const/4 v6, 0x2

    const-string v7, "jpg"

    const-string v8, "image/jpeg"

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v5, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v7, "JPEG"

    const/4 v9, 0x3

    const-string v10, "jpep"

    invoke-direct {v5, v7, v9, v10, v8}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Landroid/taobao/windvane/util/MimeTypeEnum;->JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v7, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v8, "SVG"

    const/4 v10, 0x4

    const-string/jumbo v11, "svg"

    const-string v12, "image/svg+xml"

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Landroid/taobao/windvane/util/MimeTypeEnum;->SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v8, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v11, "PNG"

    const/4 v12, 0x5

    const-string/jumbo v13, "png"

    const-string v14, "image/png"

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Landroid/taobao/windvane/util/MimeTypeEnum;->PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

    .line 2
    new-instance v11, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v13, "WEBP"

    const/4 v14, 0x6

    const-string/jumbo v15, "webp"

    const-string v12, "image/webp"

    invoke-direct {v11, v13, v14, v15, v12}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Landroid/taobao/windvane/util/MimeTypeEnum;->WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v12, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v13, "GIF"

    const/4 v15, 0x7

    const-string v14, "gif"

    const-string v10, "image/gif"

    invoke-direct {v12, v13, v15, v14, v10}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Landroid/taobao/windvane/util/MimeTypeEnum;->GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v10, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v13, "HTM"

    const/16 v14, 0x8

    const-string v15, "htm"

    const-string/jumbo v9, "text/html"

    invoke-direct {v10, v13, v14, v15, v9}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Landroid/taobao/windvane/util/MimeTypeEnum;->HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v13, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string v15, "HTML"

    const/16 v14, 0x9

    const-string v6, "html"

    invoke-direct {v13, v15, v14, v6, v9}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    const/16 v6, 0xa

    new-array v6, v6, [Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v8, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v12, v6, v0

    const/16 v0, 0x8

    aput-object v10, v6, v0

    aput-object v13, v6, v14

    .line 3
    sput-object v6, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1

    .line 1
    const-class v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/MimeTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    return-void
.end method
