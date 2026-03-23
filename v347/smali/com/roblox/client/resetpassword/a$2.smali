.class Lcom/roblox/client/resetpassword/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/resetpassword/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/resetpassword/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/resetpassword/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/resetpassword/a$2;->a:Lcom/roblox/client/resetpassword/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$2;->a:Lcom/roblox/client/resetpassword/a;

    invoke-static {v0}, Lcom/roblox/client/resetpassword/a;->b(Lcom/roblox/client/resetpassword/a;)V

    .line 124
    return-void
.end method
