.class public interface abstract Landroidx/compose/ui/tooling/CompositionDataRecord;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;->$$INSTANCE:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    sput-object v0, Landroidx/compose/ui/tooling/CompositionDataRecord;->Companion:Landroidx/compose/ui/tooling/CompositionDataRecord$Companion;

    return-void
.end method


# virtual methods
.method public abstract getStore()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
