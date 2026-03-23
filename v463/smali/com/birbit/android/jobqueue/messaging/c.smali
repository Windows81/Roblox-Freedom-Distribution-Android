.class public Lcom/birbit/android/jobqueue/messaging/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lcom/birbit/android/jobqueue/messaging/b;

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/birbit/android/jobqueue/messaging/g;->values()[Lcom/birbit/android/jobqueue/messaging/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/c;->a:[Lcom/birbit/android/jobqueue/messaging/b;

    .line 10
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/c;->b:[I

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/birbit/android/jobqueue/messaging/b;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/g;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/c;->a:[Lcom/birbit/android/jobqueue/messaging/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/c;->a:[Lcom/birbit/android/jobqueue/messaging/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v3

    iget-object v4, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    aput-object v4, p1, v3

    .line 23
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/c;->b:[I

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v3

    aget v4, p1, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, p1, v3

    .line 24
    iput-object v2, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 29
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/birbit/android/jobqueue/messaging/b;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure it has a public"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " empty constructor."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure it has a empty"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constructor."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 3

    .line 41
    iget-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    .line 42
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/b;->b()V

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/c;->b:[I

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/c;->a:[Lcom/birbit/android/jobqueue/messaging/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 47
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/c;->a:[Lcom/birbit/android/jobqueue/messaging/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v2

    aput-object p1, v1, v2

    .line 48
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/c;->b:[I

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/messaging/g;->ordinal()I

    move-result v1

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    .line 50
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
