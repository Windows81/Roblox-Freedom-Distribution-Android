.class Lcom/roblox/client/q$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q;->a(ZLcom/roblox/client/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/q$a;

.field final synthetic b:Lcom/roblox/client/q;


# direct methods
.method constructor <init>(Lcom/roblox/client/q;Lcom/roblox/client/q$a;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/roblox/client/q$4;->b:Lcom/roblox/client/q;

    iput-object p2, p0, Lcom/roblox/client/q$4;->a:Lcom/roblox/client/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/roblox/client/q$4;->a:Lcom/roblox/client/q$a;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 487
    invoke-interface {p1, p2, v0}, Lcom/roblox/client/q$a;->a(ZZ)V

    :cond_0
    return-void
.end method
