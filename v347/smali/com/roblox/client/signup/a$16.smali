.class Lcom/roblox/client/signup/a$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    const-string v1, "termsOfUse"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->k(Lcom/roblox/client/signup/a;)V

    .line 538
    return-void
.end method
