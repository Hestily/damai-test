.class public final enum Landroidx/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroidx/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroidx/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/renderscript/RenderScript$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroidx/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/RenderScript$Priority;->LOW:Landroidx/renderscript/RenderScript$Priority;

    .line 2
    new-instance v1, Landroidx/renderscript/RenderScript$Priority;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    const/4 v5, -0x4

    invoke-direct {v1, v3, v4, v5}, Landroidx/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/renderscript/RenderScript$Priority;->NORMAL:Landroidx/renderscript/RenderScript$Priority;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/renderscript/RenderScript$Priority;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroidx/renderscript/RenderScript$Priority;->$VALUES:[Landroidx/renderscript/RenderScript$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroidx/renderscript/RenderScript$Priority;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/RenderScript$Priority;
    .locals 1

    .line 1
    const-class v0, Landroidx/renderscript/RenderScript$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/renderscript/RenderScript$Priority;

    return-object p0
.end method

.method public static values()[Landroidx/renderscript/RenderScript$Priority;
    .locals 1

    .line 1
    sget-object v0, Landroidx/renderscript/RenderScript$Priority;->$VALUES:[Landroidx/renderscript/RenderScript$Priority;

    invoke-virtual {v0}, [Landroidx/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/renderscript/RenderScript$Priority;

    return-object v0
.end method
