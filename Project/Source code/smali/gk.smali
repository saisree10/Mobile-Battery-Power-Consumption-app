.class public Lgk;
.super Ljava/lang/Object;
.source "FileUtilsCompat.java"


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Constructor;

.field private static e:Ljava/lang/reflect/Constructor;

.field private static f:Ljava/lang/reflect/Field;

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/Class;

.field private static i:Ljava/lang/Class;

.field private static j:Ljava/lang/Class;

.field private static k:Ljava/lang/reflect/Field;

.field private static l:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    const-string v0, "android.os.FileUtils"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgk;->a:Ljava/lang/Class;

    .line 48
    const-string v0, "android.os.FileUtils$FileStatus"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgk;->b:Ljava/lang/Class;

    .line 50
    sget-object v0, Lgk;->a:Ljava/lang/Class;

    const-string v1, "getFileStatus"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lgk;->b:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgk;->c:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lgk;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lgk;->d:Ljava/lang/reflect/Constructor;

    .line 53
    sget-object v0, Lgk;->b:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lgk;->e:Ljava/lang/reflect/Constructor;

    .line 54
    sget-object v0, Lgk;->b:Ljava/lang/Class;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgk;->f:Ljava/lang/reflect/Field;

    .line 55
    sget-object v0, Lgk;->b:Ljava/lang/Class;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgk;->g:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 60
    :goto_0
    sget-object v0, Lgk;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 62
    :try_start_1
    const-string v0, "libcore.io.Libcore"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgk;->h:Ljava/lang/Class;

    .line 64
    const-string v0, "libcore.io.Os"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgk;->i:Ljava/lang/Class;

    .line 66
    const-string v0, "libcore.io.StructStat"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgk;->j:Ljava/lang/Class;

    .line 68
    sget-object v0, Lgk;->h:Ljava/lang/Class;

    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgk;->k:Ljava/lang/reflect/Field;

    .line 69
    sget-object v0, Lgk;->i:Ljava/lang/Class;

    const-string v1, "stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgk;->l:Ljava/lang/reflect/Method;

    .line 70
    sget-object v0, Lgk;->j:Ljava/lang/Class;

    const-string v1, "st_uid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgk;->f:Ljava/lang/reflect/Field;

    .line 71
    sget-object v0, Lgk;->j:Ljava/lang/Class;

    const-string v1, "st_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgk;->g:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 76
    :catch_2
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 58
    :catch_3
    move-exception v0

    goto :goto_0

    .line 57
    :catch_4
    move-exception v0

    goto :goto_0

    .line 56
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 119
    sget-object v0, Lgk;->f:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    sget-object v0, Lgk;->f:Ljava/lang/reflect/Field;

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 128
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 155
    sget-object v0, Lgk;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lgk;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    .line 157
    invoke-static {p0, v0}, Lgk;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    aget-object v0, v0, v2

    invoke-static {v0}, Lgk;->b(Ljava/lang/Object;)I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lgk;->e:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    sget-object v0, Lgk;->e:Ljava/lang/reflect/Constructor;

    .line 104
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    goto :goto_1

    .line 105
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eq v2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 166
    :cond_1
    sget-object v2, Lgk;->c:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 168
    :try_start_0
    sget-object v0, Lgk;->c:Ljava/lang/reflect/Method;

    .line 169
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    .line 170
    sget-object v3, Lgk;->a:Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    move v0, v1

    .line 192
    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 177
    :cond_3
    sget-object v2, Lgk;->l:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 179
    :try_start_1
    sget-object v2, Lgk;->k:Ljava/lang/reflect/Field;

    .line 180
    sget-object v3, Lgk;->h:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    sget-object v3, Lgk;->l:Ljava/lang/reflect/Method;

    .line 182
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 183
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 184
    const/4 v3, 0x0

    aput-object v2, p1, v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 186
    :catch_2
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 188
    :catch_3
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    sget-object v0, Lgk;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    sget-object v0, Lgk;->g:Ljava/lang/reflect/Field;

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 151
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
