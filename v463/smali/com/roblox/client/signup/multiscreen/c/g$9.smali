.class Lcom/roblox/client/signup/multiscreen/c/g$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/g;->aw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$9;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
