.class public Lcom/b/a/a/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lcom/b/a/a/g/b;

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/b/a/a/g/i;->values()[Lcom/b/a/a/g/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/b/a/a/g/b;

    iput-object v0, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    .line 10
    iget-object v0, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/a/g/c;->b:[I

    .line 13
    iget-object v0, p0, Lcom/b/a/a/g/c;->b:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/b/a/a/g/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/b/a/a/g/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 17
    sget-object v0, Lcom/b/a/a/g/i;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/i;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    invoke-virtual {v0}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    .line 21
    if-eqz v1, :cond_0

    .line 22
    iget-object v2, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    invoke-virtual {v0}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v3

    iget-object v4, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    aput-object v4, v2, v3

    .line 23
    iget-object v2, p0, Lcom/b/a/a/g/c;->b:[I

    invoke-virtual {v0}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 24
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    return-object v1

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/g/b;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure it has a empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :goto_1
    monitor-exit v0

    move-object v1, v2

    .line 38
    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure it has a public"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " empty constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/b/a/a/g/b;)V
    .locals 4

    .prologue
    .line 41
    iget-object v1, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    .line 42
    invoke-virtual {p1}, Lcom/b/a/a/g/b;->b()V

    .line 44
    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/g/c;->b:[I

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 47
    iget-object v0, p0, Lcom/b/a/a/g/c;->a:[Lcom/b/a/a/g/b;

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v2

    aput-object p1, v0, v2

    .line 48
    iget-object v0, p0, Lcom/b/a/a/g/c;->b:[I

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v2

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 50
    :cond_0
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
