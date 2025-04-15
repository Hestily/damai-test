.class public final Landroidx/compose/ui/text/android/style/ShadowSpan;
.super Landroid/text/style/CharacterStyle;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final color:I

.field private final offsetX:F

.field private final offsetY:F

.field private final radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 3
    iput p2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 4
    iput p3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 5
    iput p4, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    return v0
.end method

.method public final getOffsetX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    return v0
.end method

.method public final getOffsetY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    return v0
.end method

.method public final getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    iget v1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    iget v2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    iget v3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method
