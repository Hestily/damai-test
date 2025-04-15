.class public final Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final FILL_TYPE_WINDING:I = 0x0

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final createVectorImageBuilder(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "res"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "attrs"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY()[I

    move-result-object v5

    .line 2
    invoke-virtual {v0, v1, v2, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED()I

    move-result v5

    const-string v6, "autoMirrored"

    const/4 v7, 0x0

    .line 4
    invoke-virtual {v0, v3, v6, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedBoolean(Landroid/content/res/TypedArray;Ljava/lang/String;IZ)Z

    move-result v17

    .line 5
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH()I

    move-result v5

    const-string/jumbo v6, "viewportWidth"

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v0, v3, v6, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v12

    .line 7
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT()I

    move-result v5

    const-string/jumbo v6, "viewportHeight"

    .line 8
    invoke-virtual {v0, v3, v6, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v13

    cmpg-float v5, v12, v7

    if-lez v5, :cond_8

    cmpg-float v5, v13, v7

    if-lez v5, :cond_7

    .line 9
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_WIDTH()I

    move-result v5

    .line 10
    invoke-virtual {v0, v3, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getDimension(Landroid/content/res/TypedArray;IF)F

    move-result v5

    .line 11
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_HEIGHT()I

    move-result v6

    .line 12
    invoke-virtual {v0, v3, v6, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getDimension(Landroid/content/res/TypedArray;IF)F

    move-result v6

    .line 13
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v8

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 16
    iget v7, v7, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 17
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v7

    const-string/jumbo v8, "tint"

    .line 19
    invoke-virtual {v0, v3, v2, v8, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedColorStateList(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v7

    goto :goto_0

    .line 21
    :cond_1
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_0

    .line 22
    :cond_2
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    :goto_0
    move-wide v14, v7

    .line 23
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT_MODE()I

    move-result v2

    const/4 v4, -0x1

    .line 24
    invoke-virtual {v0, v3, v2, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v0

    if-eq v0, v4, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 25
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 26
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getPlus-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 27
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getScreen-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 28
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getModulate-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 29
    :cond_3
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcAtop-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 30
    :cond_4
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 31
    :cond_5
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v0

    goto :goto_1

    .line 32
    :cond_6
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    :goto_1
    move/from16 v16, v0

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v0

    .line 34
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v0

    .line 36
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 37
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 39
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final getStrokeLineCap-CSYIeUk(II)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic getStrokeLineCap-CSYIeUk$default(IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineCap-CSYIeUk(II)I

    move-result p0

    return p0
.end method

.method private static final getStrokeLineJoin-kLtJ_vA(II)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getRound-LxFBmk8()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic getStrokeLineJoin-kLtJ_vA$default(IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineJoin-kLtJ_vA(II)I

    move-result p0

    return p0
.end method

.method public static final isAtEnd(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static final obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/BrushKt;->ShaderBrush(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final parseClipPath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 16
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "res"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "attrs"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "builder"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH()[I

    move-result-object v5

    move-object/from16 v6, p2

    .line 2
    invoke-virtual {v0, v1, v6, v2, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v5, v2

    .line 5
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA()I

    move-result v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->addPathNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0xfe

    const/4 v15, 0x0

    move-object/from16 v4, p4

    .line 9
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void
.end method

.method public static final parseCurrentVectorNode(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I
    .locals 4
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "group"

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 p5, p5, 0x1

    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p5, :cond_1

    .line 3
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x624e8b7e

    if-eq v1, v3, :cond_7

    const v3, 0x346425

    if-eq v1, v3, :cond_5

    const v3, 0x5e0f67f

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseGroup(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "path"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 7
    :cond_6
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parsePath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    goto :goto_1

    :cond_7
    const-string v1, "clip-path"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 9
    :cond_8
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseClipPath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    add-int/lit8 p5, p5, 0x1

    :cond_9
    :goto_1
    return p5
.end method

.method public static synthetic parseCurrentVectorNode$default(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;IILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseCurrentVectorNode(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I

    move-result p0

    return p0
.end method

.method public static final parseGroup(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 14
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "res"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "attrs"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "builder"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP()[I

    move-result-object v5

    move-object/from16 v6, p2

    .line 2
    invoke-virtual {p0, p1, v6, v2, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION()I

    move-result v2

    const-string/jumbo v5, "rotation"

    const/4 v6, 0x0

    .line 4
    invoke-virtual {p0, v1, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v2

    .line 5
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X()I

    move-result v5

    .line 6
    invoke-virtual {p0, v1, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getFloat(Landroid/content/res/TypedArray;IF)F

    move-result v7

    .line 7
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y()I

    move-result v5

    .line 8
    invoke-virtual {p0, v1, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getFloat(Landroid/content/res/TypedArray;IF)F

    move-result v8

    .line 9
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X()I

    move-result v5

    const-string/jumbo v9, "scaleX"

    const/high16 v10, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p0, v1, v9, v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v9

    .line 11
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y()I

    move-result v5

    const-string/jumbo v11, "scaleY"

    .line 12
    invoke-virtual {p0, v1, v11, v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v10

    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X()I

    move-result v5

    const-string/jumbo v11, "translateX"

    .line 14
    invoke-virtual {p0, v1, v11, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v11

    .line 15
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y()I

    move-result v5

    const-string/jumbo v12, "translateY"

    .line 16
    invoke-virtual {p0, v1, v12, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v12

    .line 17
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_NAME()I

    move-result v3

    .line 18
    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v5, v0

    .line 19
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v13

    move-object/from16 v4, p4

    move v6, v2

    .line 21
    invoke-virtual/range {v4 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void
.end method

.method public static final parsePath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 22
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "<this>"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "res"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attrs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builder"

    move-object/from16 v7, p4

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH()[I

    move-result-object v2

    move-object/from16 v9, p2

    .line 2
    invoke-virtual {v6, v0, v9, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string/jumbo v1, "pathData"

    invoke-static {v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_NAME()I

    move-result v0

    .line 5
    invoke-virtual {v6, v10, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v11, v0

    .line 6
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA()I

    move-result v0

    invoke-virtual {v6, v10, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->addPathNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 8
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR()I

    move-result v4

    const/4 v5, 0x0

    const-string v3, "fillColor"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedComplexColor(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v13

    .line 10
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA()I

    move-result v0

    const-string v1, "fillAlpha"

    const/high16 v14, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {v6, v10, v1, v0, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v15

    .line 12
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP()I

    move-result v0

    const-string/jumbo v1, "strokeLineCap"

    const/4 v2, -0x1

    .line 13
    invoke-virtual {v6, v10, v1, v0, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v0

    .line 14
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineCap-CSYIeUk(II)I

    move-result v16

    .line 15
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN()I

    move-result v0

    const-string/jumbo v1, "strokeLineJoin"

    .line 16
    invoke-virtual {v6, v10, v1, v0, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v0

    .line 17
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineJoin-kLtJ_vA(II)I

    move-result v17

    .line 18
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT()I

    move-result v0

    const-string/jumbo v1, "strokeMiterLimit"

    .line 19
    invoke-virtual {v6, v10, v1, v0, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v18

    .line 20
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR()I

    move-result v4

    const-string/jumbo v3, "strokeColor"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedComplexColor(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    .line 22
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA()I

    move-result v1

    const-string/jumbo v2, "strokeAlpha"

    .line 23
    invoke-virtual {v6, v10, v2, v1, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v1

    .line 24
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH()I

    move-result v2

    const-string/jumbo v3, "strokeWidth"

    .line 25
    invoke-virtual {v6, v10, v3, v2, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v2

    .line 26
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END()I

    move-result v3

    const-string/jumbo v4, "trimPathEnd"

    .line 27
    invoke-virtual {v6, v10, v4, v3, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v19

    .line 28
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET()I

    move-result v3

    const-string/jumbo v4, "trimPathOffset"

    const/4 v5, 0x0

    .line 29
    invoke-virtual {v6, v10, v4, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v20

    .line 30
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START()I

    move-result v3

    const-string/jumbo v4, "trimPathStart"

    .line 31
    invoke-virtual {v6, v10, v4, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v21

    .line 32
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE()I

    move-result v3

    .line 33
    sget v4, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->FILL_TYPE_WINDING:I

    const-string v5, "fillType"

    .line 34
    invoke-virtual {v6, v10, v5, v3, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v3

    .line 35
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-static {v13}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v8

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v9

    .line 38
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getNonZero-Rg-k1Os()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getEvenOdd-Rg-k1Os()I

    move-result v0

    :goto_0
    move v5, v0

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v6, v11

    move-object v7, v8

    move v8, v15

    move v10, v1

    move v11, v2

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v21

    move/from16 v16, v19

    move/from16 v17, v20

    .line 39
    invoke-virtual/range {v3 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final seekToStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
