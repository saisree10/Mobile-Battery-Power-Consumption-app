.class public Lbev;
.super Ljava/lang/Object;
.source "MathHelper.java"


# static fields
.field private static final a:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lbev;->a:Ljava/text/NumberFormat;

    return-void
.end method

.method private static a(D)D
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v0, 0x4014

    const-wide/high16 v4, 0x4000

    const-wide/high16 v2, 0x4024

    .line 135
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v8, v6

    .line 136
    neg-int v6, v8

    int-to-double v6, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, p0

    .line 137
    cmpl-double v9, v6, v0

    if-lez v9, :cond_1

    move-wide v0, v2

    .line 144
    :cond_0
    :goto_0
    int-to-double v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 145
    return-wide v0

    .line 139
    :cond_1
    cmpl-double v9, v6, v4

    if-gtz v9, :cond_0

    .line 141
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_2

    move-wide v0, v4

    .line 142
    goto :goto_0

    :cond_2
    move-wide v0, v6

    goto :goto_0
.end method

.method public static a(DDI)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    if-gtz p4, :cond_0

    move-object v0, v2

    .line 94
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lbev;->a:Ljava/text/NumberFormat;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lbev;->b(DDI)[D

    move-result-object v4

    .line 78
    const/4 v0, 0x1

    aget-wide v0, v4, v0

    const/4 v3, 0x0

    aget-wide v5, v4, v3

    sub-double/2addr v0, v5

    const/4 v3, 0x2

    aget-wide v5, v4, v3

    div-double/2addr v0, v5

    double-to-int v0, v0

    add-int/lit8 v5, v0, 0x1

    .line 83
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 84
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    int-to-double v6, v3

    const/4 v8, 0x2

    aget-wide v8, v4, v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 88
    :try_start_0
    sget-object v6, Lbev;->a:Ljava/text/NumberFormat;

    sget-object v7, Lbev;->a:Ljava/text/NumberFormat;

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 92
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 94
    goto :goto_0

    .line 89
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static b(DDI)[D
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f2a0000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 v1, 0x1

    aput-wide p0, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    cmpl-double v1, p0, p2

    if-lez v1, :cond_2

    .line 114
    const/4 v0, 0x1

    .line 119
    :goto_1
    sub-double v1, p2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, p4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lbev;->a(D)D

    move-result-wide v1

    .line 121
    div-double v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 122
    div-double v5, p0, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    .line 123
    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v7, 0x0

    aput-wide v5, v0, v7

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    const/4 v3, 0x2

    const-wide/high16 v4, -0x4010

    mul-double/2addr v1, v4

    aput-wide v1, v0, v3

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v7, 0x0

    aput-wide v3, v0, v7

    const/4 v3, 0x1

    aput-wide v5, v0, v3

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    goto :goto_0

    :cond_2
    move-wide v8, p2

    move-wide p2, p0

    move-wide p0, v8

    goto :goto_1
.end method
