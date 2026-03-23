.class public final Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lb/a/a/e;

.field private final b:Lb/a/a/d;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->close()V

    .line 391
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lb/c;->b:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->flush()V

    .line 387
    return-void
.end method
