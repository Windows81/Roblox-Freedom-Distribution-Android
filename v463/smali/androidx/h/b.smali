.class public abstract Landroidx/h/b;
.super Landroidx/h/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/h/i;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/h/e;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/h/i;-><init>(Landroidx/h/e;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/f;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroidx/h/b;->c()Landroidx/i/a/f;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/h/b;->a(Landroidx/i/a/f;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Landroidx/i/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v0}, Landroidx/h/b;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/h/b;->a(Landroidx/i/a/f;)V

    throw p1
.end method
