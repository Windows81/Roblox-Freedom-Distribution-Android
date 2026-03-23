.class final Lcom/google/firebase/components/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/b/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/lang/Object;

.field private volatile c:Lcom/google/firebase/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/b/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/p;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/d<",
            "TT;>;",
            "Lcom/google/firebase/components/b;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/google/firebase/components/p;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/p;->b:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/firebase/components/q;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/components/q;-><init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/b;)V

    iput-object v0, p0, Lcom/google/firebase/components/p;->c:Lcom/google/firebase/b/a;

    return-void
.end method

.method static final synthetic a(Lcom/google/firebase/components/d;Lcom/google/firebase/components/b;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-interface {p0, p1}, Lcom/google/firebase/components/d;->a(Lcom/google/firebase/components/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/firebase/components/p;->b:Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/google/firebase/components/p;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/p;->b:Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/google/firebase/components/p;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/firebase/components/p;->c:Lcom/google/firebase/b/a;

    invoke-interface {v0}, Lcom/google/firebase/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/firebase/components/p;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/google/firebase/components/p;->c:Lcom/google/firebase/b/a;

    .line 46
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
