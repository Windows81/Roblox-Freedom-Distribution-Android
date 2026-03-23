.class Lcom/roblox/client/login/mvp/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$5;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$5;->a:Lcom/roblox/client/login/mvp/a;

    iget-object p1, p1, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/a$a;->w()V

    return-void
.end method
