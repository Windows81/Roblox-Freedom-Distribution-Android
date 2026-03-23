.class Lcom/roblox/client/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/roblox/client/c/a;

    invoke-direct {v0}, Lcom/roblox/client/c/a;-><init>()V

    sput-object v0, Lcom/roblox/client/c/a$a;->a:Lcom/roblox/client/c/a;

    return-void
.end method
