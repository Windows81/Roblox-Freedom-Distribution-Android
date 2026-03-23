.class Lcom/b/a/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/b;


# direct methods
.method constructor <init>(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    iget-object v0, v0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    new-instance v1, Lcom/b/a/a/b$1$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/b$1$1;-><init>(Lcom/b/a/a/b$1;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/f;)V

    .line 97
    return-void
.end method
