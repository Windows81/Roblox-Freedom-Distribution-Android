.class Lcom/roblox/client/landing/ActivityStartMVP$a;
.super Landroidx/fragment/app/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/landing/ActivityStartMVP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:[Lcom/roblox/client/landing/a;

.field final synthetic b:Lcom/roblox/client/landing/ActivityStartMVP;


# direct methods
.method private constructor <init>(Lcom/roblox/client/landing/ActivityStartMVP;Landroidx/fragment/app/g;[Lcom/roblox/client/landing/a;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/roblox/client/landing/ActivityStartMVP$a;->b:Lcom/roblox/client/landing/ActivityStartMVP;

    .line 308
    invoke-direct {p0, p2}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/g;)V

    .line 310
    iput-object p3, p0, Lcom/roblox/client/landing/ActivityStartMVP$a;->a:[Lcom/roblox/client/landing/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/landing/ActivityStartMVP;Landroidx/fragment/app/g;[Lcom/roblox/client/landing/a;Lcom/roblox/client/landing/ActivityStartMVP$1;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/landing/ActivityStartMVP$a;-><init>(Lcom/roblox/client/landing/ActivityStartMVP;Landroidx/fragment/app/g;[Lcom/roblox/client/landing/a;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP$a;->a:[Lcom/roblox/client/landing/a;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/roblox/client/landing/b;->a(Lcom/roblox/client/landing/a;)Lcom/roblox/client/landing/b;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/roblox/client/landing/ActivityStartMVP$a;->a:[Lcom/roblox/client/landing/a;

    array-length v0, v0

    return v0
.end method
