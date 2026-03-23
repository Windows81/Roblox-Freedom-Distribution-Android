.class Lcom/roblox/client/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k;->a(ZLcom/roblox/client/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k$a;

.field final synthetic b:Lcom/roblox/client/k;


# direct methods
.method constructor <init>(Lcom/roblox/client/k;Lcom/roblox/client/k$a;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/roblox/client/k$4;->b:Lcom/roblox/client/k;

    iput-object p2, p0, Lcom/roblox/client/k$4;->a:Lcom/roblox/client/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/roblox/client/k$4;->a:Lcom/roblox/client/k$a;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/roblox/client/k$4;->a:Lcom/roblox/client/k$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/k$a;->a(ZZ)V

    .line 347
    :cond_0
    return-void
.end method
