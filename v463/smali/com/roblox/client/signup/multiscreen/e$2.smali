.class Lcom/roblox/client/signup/multiscreen/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/e;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/e;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e$2;->b:Lcom/roblox/client/signup/multiscreen/e;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/e$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/e$2;->a:Ljava/lang/String;

    const-string v0, "onFailure."

    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
