.class Lcom/roblox/client/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/roblox/client/e$5;->a:Lcom/roblox/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/h/n$b;)V
    .locals 7

    .prologue
    .line 263
    const-string v0, "rbx.catalog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssetRetrieved() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/roblox/client/e$5;->a:Lcom/roblox/client/e;

    invoke-virtual {p2}, Lcom/roblox/client/h/n$b;->a()J

    move-result-wide v2

    .line 266
    invoke-virtual {p2}, Lcom/roblox/client/h/n$b;->b()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {p2}, Lcom/roblox/client/h/n$b;->c()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {p2}, Lcom/roblox/client/h/n$b;->d()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/e;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method
