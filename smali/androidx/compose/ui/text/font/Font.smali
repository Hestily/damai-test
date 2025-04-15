.class public interface abstract Landroidx/compose/ui/text/font/Font;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/Font$ResourceLoader;,
        Landroidx/compose/ui/text/font/Font$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/Font$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MaximumAsyncTimeout:J = 0x3a98L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/Font$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/Font$Companion;

    sput-object v0, Landroidx/compose/ui/text/font/Font;->Companion:Landroidx/compose/ui/text/font/Font$Companion;

    return-void
.end method


# virtual methods
.method public abstract getLoadingStrategy-PKNRLFQ()I
.end method

.method public abstract getStyle-_-LCdwA()I
.end method

.method public abstract getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
