.class Lcom/roblox/client/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k;


# direct methods
.method constructor <init>(Lcom/roblox/client/k;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/roblox/client/k$1;->a:Lcom/roblox/client/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v0, "rbx.locale"

    const-string v1, "Recreating activity"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/roblox/client/k$1;->a:Lcom/roblox/client/k;

    invoke-virtual {v0}, Lcom/roblox/client/k;->recreate()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "rbx.locale"

    const-string v1, "Retrieved locale same as current locale"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
