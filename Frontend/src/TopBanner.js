const TopBanner = ({image, position, text}) => {
    const top_banner_styles = {
        backgroundImage: `url('${image}')`,
        backgroundSize: "cover",
        backgroundPosition: position,
        width: "100%",
        height: "275px",
        display: "flex",
        boxShadow: "0 4px 4px rgba(0, 0, 0, 0.2)"
    }

    const text_style = {
        margin: "auto",
        textAlign: "center",
        fontSize: "60px",
        color: "white",
        textShadow: "4px 4px 15px rgb(0 0 0 / 85%)"
    }

    return (
        <div style={top_banner_styles}>
            <p style={text_style}>{text}</p>
        </div>
    );
}
 
export default TopBanner;