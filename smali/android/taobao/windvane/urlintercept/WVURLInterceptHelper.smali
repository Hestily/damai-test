.class public Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static TAG:Ljava/lang/String; = "WVURLInterceptHelper"

.field private static final URL_FILTER_TAG:Ljava/lang/String; = "_wv_url_hyid"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseByRule(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;"
        }
    .end annotation

    const-class v0, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    invoke-direct {v1}, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;-><init>()V

    .line 2
    iput-object p0, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->url:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;

    .line 5
    iget-object v4, v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->pattern:Ljava/lang/String;

    .line 6
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 7
    :try_start_1
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 8
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    sget-object v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pattern:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 10
    monitor-exit v0

    return-object v1

    .line 11
    :cond_2
    :try_start_3
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Landroid/taobao/windvane/urlintercept/WVURLInterceptHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url matched for pattern "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    iget p1, v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->target:I

    iput p1, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->code:I

    .line 16
    iput-object v4, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->rule:Ljava/lang/String;

    .line 17
    iget p1, v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->rutype:I

    if-nez p1, :cond_5

    .line 18
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    .line 19
    iget-object p1, v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->indexp:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 22
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-lt p0, v3, :cond_4

    .line 23
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    .line 25
    iget-object p1, v3, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->namep:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/taobao/windvane/util/WVUrlUtil;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_7
    iput-object v2, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->params:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static parseByTag(Ljava/lang/String;)Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;
    .locals 10

    const-string v0, "_wv_url_hyid"

    .line 1
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/WVUrlUtil;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;

    invoke-direct {v1}, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;-><init>()V

    .line 4
    iput-object p0, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->url:Ljava/lang/String;

    const-string v3, ";"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    .line 6
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->code:I

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v2, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    aget-object v7, v0, v6

    const-string v8, ":"

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 14
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 15
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/taobao/windvane/util/WVUrlUtil;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 17
    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iput-object v4, v1, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$URLInfo;->params:Ljava/util/Map;

    return-object v1
.end method

.method public static parseRuleData(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    const-string/jumbo v1, "rules"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v3, Landroid/taobao/windvane/connect/api/ApiResponse;

    invoke-direct {v3}, Landroid/taobao/windvane/connect/api/ApiResponse;-><init>()V

    .line 3
    invoke-virtual {v3, p0}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;

    move-result-object p0

    iget-boolean p0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, v3, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    .line 5
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "lock"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sput-boolean v2, Landroid/taobao/windvane/config/WVServerConfig;->URL_FILTER:Z

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 11
    new-instance v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;

    invoke-direct {v6}, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;-><init>()V

    const-string/jumbo v7, "target"

    .line 12
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->target:I

    const-string/jumbo v7, "pattern"

    .line 13
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->pattern:Ljava/lang/String;

    const-string/jumbo v7, "rutype"

    .line 14
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->rutype:I

    const-string v7, "indexp"

    .line 15
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 16
    array-length v8, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x0

    :goto_3
    const/4 v10, 0x2

    const-string v11, ":"

    if-ge v9, v8, :cond_3

    :try_start_2
    aget-object v12, v7, v9

    .line 17
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 18
    array-length v12, v11

    if-ne v12, v10, :cond_2

    aget-object v10, v11, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 19
    iget-object v10, v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->indexp:Ljava/util/Map;

    aget-object v12, v11, v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v7, "namep"

    .line 20
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 21
    array-length v7, v2

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_5

    aget-object v9, v2, v8

    .line 22
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 23
    array-length v12, v9

    if-ne v12, v10, :cond_4

    .line 24
    iget-object v12, v6, Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;->namep:Ljava/util/Map;

    aget-object v13, v9, v5

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 25
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_0
    :cond_6
    move-object v2, v3

    :catch_1
    :cond_7
    return-object v2
.end method
