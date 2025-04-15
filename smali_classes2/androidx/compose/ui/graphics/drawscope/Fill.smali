.class public final Landroidx/compose/ui/graphics/drawscope/Fill;
.super Landroidx/compose/ui/graphics/drawscope/DrawStyle;
.source "Taobao"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/Fill;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/drawscope/DrawStyle;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
