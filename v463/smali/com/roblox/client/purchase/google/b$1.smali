.class Lcom/roblox/client/purchase/google/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/google/a/f;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result p1

    const-string v0, "rbx.purchaseflow"

    if-nez p1, :cond_0

    const-string p1, "Google IAB is not setup"

    .line 117
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/c;)Lcom/roblox/client/purchase/google/a/c;

    .line 119
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v0, Lcom/roblox/client/purchase/google/b$a;->b:Lcom/roblox/client/purchase/google/b$a;

    invoke-static {p1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;

    goto :goto_0

    :cond_0
    const-string p1, "Google IAB is setup"

    .line 123
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v0, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    invoke-static {p1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;

    .line 128
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {p1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Z)Z

    .line 130
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {p1}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;)V

    :cond_1
    :goto_0
    return-void
.end method
