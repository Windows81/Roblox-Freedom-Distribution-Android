.class Lb/a/c/d$7;
.super Lb/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/d;->c(ILb/a/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lb/a/c/a;

.field final synthetic d:Lb/a/c/d;


# direct methods
.method varargs constructor <init>(Lb/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILb/a/c/a;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lb/a/c/d$7;->d:Lb/a/c/d;

    iput p4, p0, Lb/a/c/d$7;->a:I

    iput-object p5, p0, Lb/a/c/d$7;->c:Lb/a/c/a;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lb/a/c/d$7;->d:Lb/a/c/d;

    invoke-static {v0}, Lb/a/c/d;->h(Lb/a/c/d;)Lb/a/c/m;

    move-result-object v0

    iget v1, p0, Lb/a/c/d$7;->a:I

    iget-object v2, p0, Lb/a/c/d$7;->c:Lb/a/c/a;

    invoke-interface {v0, v1, v2}, Lb/a/c/m;->a(ILb/a/c/a;)V

    .line 890
    iget-object v1, p0, Lb/a/c/d$7;->d:Lb/a/c/d;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lb/a/c/d$7;->d:Lb/a/c/d;

    invoke-static {v0}, Lb/a/c/d;->i(Lb/a/c/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lb/a/c/d$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 892
    monitor-exit v1

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
