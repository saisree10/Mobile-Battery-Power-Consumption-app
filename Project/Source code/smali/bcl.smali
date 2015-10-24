.class public Lbcl;
.super Ljava/lang/Object;
.source "StatWrapper.java"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lbcl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbcl;->e:Ljava/lang/String;

    .line 27
    :try_start_0
    const-class v0, Landroid/os/StatFs;

    const-string v2, "getBlockSize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    sput-object v0, Lbcl;->a:Ljava/lang/reflect/Method;

    .line 38
    :try_start_1
    const-class v0, Landroid/os/StatFs;

    const-string v2, "getBlockSizeLong"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 44
    :goto_1
    sput-object v0, Lbcl;->b:Ljava/lang/reflect/Method;

    .line 49
    :try_start_2
    const-class v0, Landroid/os/StatFs;

    const-string v2, "getAvailableBlocks"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 55
    :goto_2
    sput-object v0, Lbcl;->c:Ljava/lang/reflect/Method;

    .line 60
    :try_start_3
    const-class v0, Landroid/os/StatFs;

    const-string v2, "getAvailableBlocksLong"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 66
    :goto_3
    sput-object v1, Lbcl;->d:Ljava/lang/reflect/Method;

    .line 67
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbcl;->f:Landroid/os/StatFs;

    .line 75
    return-void
.end method


# virtual methods
.method public a()J
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 79
    const-wide/16 v1, 0x0

    .line 80
    sget-object v0, Lbcl;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 85
    :try_start_0
    sget-object v0, Lbcl;->b:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lbcl;->f:Landroid/os/StatFs;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v1

    move-wide v7, v1

    move-wide v0, v7

    move v2, v3

    .line 108
    :goto_0
    if-nez v2, :cond_1

    move-wide v1, v0

    .line 143
    :cond_0
    :goto_1
    return-wide v1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getBlockSizeLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 106
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 94
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getBlockSizeLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 106
    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 99
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getBlockSizeLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 106
    goto :goto_0

    .line 102
    :catch_3
    move-exception v0

    .line 104
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getBlockSizeLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 105
    goto :goto_0

    :cond_1
    move-wide v1, v0

    .line 112
    :cond_2
    sget-object v0, Lbcl;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 117
    :try_start_1
    sget-object v0, Lbcl;->a:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lbcl;->f:Landroid/os/StatFs;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v0

    int-to-long v1, v0

    move v0, v3

    .line 139
    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    .line 119
    :catch_4
    move-exception v0

    .line 121
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getBlockSize invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 138
    goto :goto_2

    .line 124
    :catch_5
    move-exception v0

    .line 126
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getBlockSize invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 138
    goto :goto_2

    .line 129
    :catch_6
    move-exception v0

    .line 131
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getBlockSize invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 138
    goto :goto_2

    .line 134
    :catch_7
    move-exception v0

    .line 136
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getBlockSize invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 137
    goto :goto_2
.end method

.method public b()J
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 148
    const-wide/16 v1, 0x0

    .line 149
    sget-object v0, Lbcl;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 154
    :try_start_0
    sget-object v0, Lbcl;->d:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lbcl;->f:Landroid/os/StatFs;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v1

    move-wide v7, v1

    move-wide v0, v7

    move v2, v3

    .line 177
    :goto_0
    if-nez v2, :cond_1

    move-wide v1, v0

    .line 212
    :cond_0
    :goto_1
    return-wide v1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getAvailableBlocksLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 175
    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 163
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getAvailableBlocksLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 175
    goto :goto_0

    .line 166
    :catch_2
    move-exception v0

    .line 168
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getAvailableBlocksLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 175
    goto :goto_0

    .line 171
    :catch_3
    move-exception v0

    .line 173
    sget-object v5, Lbcl;->e:Ljava/lang/String;

    const-string v6, "getAvailableBlocksLong invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v7, v1

    move-wide v0, v7

    move v2, v4

    .line 174
    goto :goto_0

    :cond_1
    move-wide v1, v0

    .line 181
    :cond_2
    sget-object v0, Lbcl;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 186
    :try_start_1
    sget-object v0, Lbcl;->c:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lbcl;->f:Landroid/os/StatFs;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v0

    int-to-long v1, v0

    move v0, v3

    .line 208
    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    .line 188
    :catch_4
    move-exception v0

    .line 190
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getAvailableBlocks invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 207
    goto :goto_2

    .line 193
    :catch_5
    move-exception v0

    .line 195
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getAvailableBlocks invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 207
    goto :goto_2

    .line 198
    :catch_6
    move-exception v0

    .line 200
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getAvailableBlocks invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 207
    goto :goto_2

    .line 203
    :catch_7
    move-exception v0

    .line 205
    sget-object v3, Lbcl;->e:Ljava/lang/String;

    const-string v5, "getAvailableBlocks invoke failed: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 206
    goto :goto_2
.end method
