.class public final Lc/a/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/d;

.field private final b:Lc/a/a/d$b;

.field private final c:[Z

.field private d:Z


# direct methods
.method static synthetic a(Lc/a/a/d$a;)Lc/a/a/d$b;
    .locals 0

    .line 842
    iget-object p0, p0, Lc/a/a/d$a;->b:Lc/a/a/d$b;

    return-object p0
.end method

.method static synthetic b(Lc/a/a/d$a;)[Z
    .locals 0

    .line 842
    iget-object p0, p0, Lc/a/a/d$a;->c:[Z

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 859
    iget-object v0, p0, Lc/a/a/d$a;->b:Lc/a/a/d$b;

    invoke-static {v0}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 860
    :goto_0
    iget-object v1, p0, Lc/a/a/d$a;->a:Lc/a/a/d;

    invoke-static {v1}, Lc/a/a/d;->a(Lc/a/a/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 862
    :try_start_0
    iget-object v1, p0, Lc/a/a/d$a;->a:Lc/a/a/d;

    invoke-static {v1}, Lc/a/a/d;->b(Lc/a/a/d;)Lc/a/e/a;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/d$a;->b:Lc/a/a/d$b;

    invoke-static {v2}, Lc/a/a/d$b;->d(Lc/a/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lc/a/e/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lc/a/a/d$a;->b:Lc/a/a/d$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;Lc/a/a/d$a;)Lc/a/a/d$a;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lc/a/a/d$a;->a:Lc/a/a/d;

    monitor-enter v0

    .line 946
    :try_start_0
    iget-boolean v1, p0, Lc/a/a/d$a;->d:Z

    if-nez v1, :cond_1

    .line 949
    iget-object v1, p0, Lc/a/a/d$a;->b:Lc/a/a/d$b;

    invoke-static {v1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 950
    iget-object v1, p0, Lc/a/a/d$a;->a:Lc/a/a/d;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lc/a/a/d;->a(Lc/a/a/d;Lc/a/a/d$a;Z)V

    :cond_0
    const/4 v1, 0x1

    .line 952
    iput-boolean v1, p0, Lc/a/a/d$a;->d:Z

    .line 953
    monitor-exit v0

    return-void

    .line 947
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 953
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
