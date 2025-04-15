.class public abstract Landroidx/compose/ui/platform/InspectorValueInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroidx/compose/ui/platform/InspectableValue;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _values:Landroidx/compose/ui/platform/InspectorInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final info:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorValueInfo;->info:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final getValues()Landroidx/compose/ui/platform/InspectorInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectorValueInfo;->_values:Landroidx/compose/ui/platform/InspectorInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-direct {v0}, Landroidx/compose/ui/platform/InspectorInfo;-><init>()V

    iget-object v1, p0, Landroidx/compose/ui/platform/InspectorValueInfo;->info:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/platform/InspectorValueInfo;->_values:Landroidx/compose/ui/platform/InspectorInfo;

    return-object v0
.end method


# virtual methods
.method public getInspectableElements()Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/InspectorValueInfo;->getValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    return-object v0
.end method

.method public getNameFallback()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/InspectorValueInfo;->getValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueOverride()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/InspectorValueInfo;->getValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
