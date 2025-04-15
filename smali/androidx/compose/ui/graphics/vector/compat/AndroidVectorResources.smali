.class public final Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLEABLE_VECTOR_DRAWABLE_ALPHA:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_NAME:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_HEIGHT:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_NAME:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_NAME:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_TINT:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_TINT_MODE:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH:I

.field private static final STYLEABLE_VECTOR_DRAWABLE_WIDTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    sput-object v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    const/4 v1, 0x4

    .line 3
    sput v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_ALPHA:I

    const/4 v2, 0x5

    .line 4
    sput v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED:I

    const/4 v3, 0x2

    .line 5
    sput v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_HEIGHT:I

    const/4 v4, 0x1

    .line 6
    sput v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT:I

    const/4 v5, 0x6

    .line 7
    sput v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT_MODE:I

    const/16 v6, 0x8

    .line 8
    sput v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT:I

    const/4 v7, 0x7

    .line 9
    sput v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH:I

    const/4 v8, 0x3

    .line 10
    sput v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_WIDTH:I

    new-array v9, v6, [I

    .line 11
    fill-array-data v9, :array_1

    .line 12
    sput-object v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    .line 13
    sput v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X:I

    .line 14
    sput v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y:I

    .line 15
    sput v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION:I

    .line 16
    sput v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X:I

    .line 17
    sput v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y:I

    .line 18
    sput v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X:I

    .line 19
    sput v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y:I

    const/16 v9, 0xe

    new-array v9, v9, [I

    .line 20
    fill-array-data v9, :array_2

    .line 21
    sput-object v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    const/16 v9, 0xc

    .line 22
    sput v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA:I

    .line 23
    sput v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR:I

    .line 24
    sput v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA:I

    const/16 v9, 0xb

    .line 25
    sput v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA:I

    .line 26
    sput v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR:I

    .line 27
    sput v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP:I

    .line 28
    sput v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN:I

    const/16 v0, 0xa

    .line 29
    sput v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT:I

    .line 30
    sput v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH:I

    .line 31
    sput v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END:I

    .line 32
    sput v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET:I

    .line 33
    sput v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START:I

    const/16 v0, 0xd

    .line 34
    sput v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE:I

    new-array v0, v3, [I

    .line 35
    fill-array-data v0, :array_3

    sput-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    .line 36
    sput v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
        0x101051e
    .end array-data

    :array_3
    .array-data 4
        0x1010003
        0x1010405
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSTYLEABLE_VECTOR_DRAWABLE_ALPHA()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_ALPHA:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    return-object v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    return-object v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_NAME()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_NAME:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_HEIGHT()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_HEIGHT:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_NAME()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_NAME:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    return-object v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_NAME()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_NAME:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_TINT()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_TINT_MODE()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TINT_MODE:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    return-object v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH:I

    return v0
.end method

.method public final getSTYLEABLE_VECTOR_DRAWABLE_WIDTH()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_WIDTH:I

    return v0
.end method
