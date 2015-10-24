.class public abstract Lrh;
.super Ljava/lang/Object;
.source "ReflectionClass.java"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lrh;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lrh;

    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lrh;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lrh;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lrh;->a(Z)V

    .line 27
    monitor-exit v1

    .line 29
    :cond_1
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v2, Lri;

    invoke-direct {v2, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    :try_start_3
    new-instance v2, Lri;

    invoke-direct {v2, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method protected final varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lrh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lri;

    const-string v1, "Reflection Class not initialized."

    invoke-direct {v0, v1}, Lri;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 63
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lri;

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Lri;

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    new-instance v1, Lri;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final varargs a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lrh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lri;

    const-string v1, "Reflection Class not initialized."

    invoke-direct {v0, v1}, Lri;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lri;

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 39
    :catch_1
    move-exception v0

    .line 40
    new-instance v1, Lri;

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_2
    move-exception v0

    .line 42
    new-instance v1, Lri;

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_3
    move-exception v0

    .line 44
    new-instance v1, Lri;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lri;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract a()V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b()Z
.end method
