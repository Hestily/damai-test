.class public final Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/draw/BlurredEdgeTreatment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRectangle---Goahg()Landroidx/compose/ui/graphics/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->access$getRectangle$cp()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    return-object v0
.end method

.method public final getUnbounded---Goahg()Landroidx/compose/ui/graphics/Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->access$getUnbounded$cp()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    return-object v0
.end method
