.class public final synthetic Landroidx/compose/runtime/external/kotlinx/collections/immutable/a;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;
    .locals 1
    .param p0, "_this"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)V

    return-object v0
.end method

.method public static bridge synthetic b(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)Ljava/util/List;
    .locals 0
    .param p0, "_this"    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;->subList(II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    move-result-object p1

    return-object p1
.end method
