.class final Ltp;
.super Ljava/lang/Object;
.source "EventReporter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ltr;

.field private final c:Ltq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ltp;->a:Landroid/content/Context;

    .line 48
    new-instance v0, Ltr;

    iget-object v1, p0, Ltp;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltp;->b:Ltr;

    .line 49
    new-instance v0, Ltq;

    iget-object v1, p0, Ltp;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ltq;-><init>(Ltp;Landroid/content/Context;)V

    iput-object v0, p0, Ltp;->c:Ltq;

    .line 50
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    iget-object v0, p0, Ltp;->a:Landroid/content/Context;

    invoke-static {v0}, Lud;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "d"

    aput-object v0, v8, v5

    const-string v0, "i"

    aput-object v0, v8, v4

    const/4 v0, 0x2

    const-string v1, "r"

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "o"

    aput-object v1, v8, v0

    .line 64
    const/16 v3, 0x3e8

    .line 66
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 68
    array-length v10, v8

    move v6, v5

    move-object v2, v7

    :goto_0
    if-ge v6, v10, :cond_0

    aget-object v11, v8, v6

    .line 69
    if-gtz v3, :cond_2

    .line 97
    :cond_0
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 98
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "stat.EventReporter"

    const-string v1, "There is no data to upload!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v4

    .line 137
    :goto_1
    return v0

    .line 73
    :cond_2
    iget-object v0, p0, Ltp;->a:Landroid/content/Context;

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const-string v1, "pk"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_4

    move-object v0, v2

    .line 68
    :cond_3
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v2, v0

    goto :goto_0

    .line 79
    :cond_4
    if-nez v2, :cond_b

    move-object v0, v1

    .line 82
    :goto_3
    iget-object v2, p0, Ltp;->b:Ltr;

    invoke-virtual {v2, v11}, Ltr;->a(Ljava/lang/String;)Lth;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lth;->c()Z

    move-result v12

    if-nez v12, :cond_3

    .line 86
    invoke-virtual {v2}, Lth;->a()V

    .line 88
    :try_start_0
    invoke-virtual {v2, v3}, Lth;->b(I)Lti;

    move-result-object v12

    .line 89
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lti;->a()Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 90
    invoke-virtual {v12}, Lti;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int v1, v3, v1

    .line 91
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_4
    invoke-virtual {v2}, Lth;->b()V

    move v3, v1

    .line 95
    goto :goto_2

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lth;->b()V

    throw v0

    .line 105
    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 106
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti;

    .line 109
    :try_start_1
    invoke-virtual {v0}, Lti;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ltp;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-boolean v6, Lud;->d:Z

    if-eqz v6, :cond_6

    .line 112
    const-string v6, "stat.EventReporter"

    const-string v7, "Failed to add dumpResult!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 117
    :cond_7
    iget-object v0, p0, Ltp;->c:Ltq;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ltq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_a

    .line 120
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    iget-object v2, p0, Ltp;->b:Ltr;

    invoke-virtual {v2, v0}, Ltr;->a(Ljava/lang/String;)Lth;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lth;->a()V

    .line 124
    :try_start_2
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti;

    invoke-virtual {v0}, Lti;->b()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lth;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    invoke-virtual {v2}, Lth;->b()V

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lth;->b()V

    throw v0

    .line 129
    :cond_8
    iget-object v0, p0, Ltp;->a:Landroid/content/Context;

    invoke-static {v0}, Ltn;->b(Landroid/content/Context;)V

    move v0, v4

    .line 130
    goto/16 :goto_1

    .line 133
    :cond_9
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_a

    .line 134
    const-string v0, "stat.EventReporter"

    const-string v1, "Network is unavilable!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v5

    .line 137
    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    goto/16 :goto_3

    :cond_c
    move v1, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Ltp;->a:Landroid/content/Context;

    invoke-static {v1}, Ltn;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0}, Ltp;->b()Z

    move-result v0

    .line 57
    :cond_0
    return v0
.end method
