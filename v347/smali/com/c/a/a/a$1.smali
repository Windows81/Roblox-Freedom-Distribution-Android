.class Lcom/c/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a;->a(Lcom/c/a/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a$a;

.field final synthetic b:Lcom/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/c/a/a/a;Lcom/c/a/a/a$a;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/c/a/a/a$1;->b:Lcom/c/a/a/a;

    iput-object p2, p0, Lcom/c/a/a/a$1;->a:Lcom/c/a/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/c/a/a/a$1;->b:Lcom/c/a/a/a;

    invoke-static {v0}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;)Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/c/a/a/a$1;->b:Lcom/c/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This System is Emulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/c/a/a/a$1;->a:Lcom/c/a/a/a$a;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/c/a/a/a$1;->a:Lcom/c/a/a/a$a;

    invoke-interface {v1, v0}, Lcom/c/a/a/a$a;->a(Z)V

    .line 182
    :cond_0
    return-void
.end method
