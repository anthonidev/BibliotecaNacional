package vista;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class BoletaPDF {
    private String idBoleta, idPedido, nombre, apellidos, dni, direccion, dep, pro, dis, telefono, fecha;
    private List listPedido;
    private Font fontHeader = FontFactory.getFont(FontFactory.HELVETICA, 12, Font.BOLD, BaseColor.WHITE);
    private Font fontBody = FontFactory.getFont(FontFactory.HELVETICA, 11, Font.NORMAL);

    public BoletaPDF(String idBoleta, String idPedido, String fecha, Object[] cliente, List listPedido) {
        this.idBoleta = idBoleta;
        this.idPedido = idPedido;
        this.nombre = cliente[1].toString();
        this.apellidos = cliente[2].toString();
        this.dni = cliente[3].toString();
        this.direccion = cliente[4].toString();
        this.dep = cliente[7].toString();
        this.pro = cliente[8].toString();
        this.dis = cliente[9].toString();
        this.telefono = cliente[5].toString();
        this.listPedido = listPedido;
        this.fecha = fecha;
    }
    
    public void crearPDF(HttpServletResponse response) {
        Font fontTitulo = FontFactory.getFont(FontFactory.HELVETICA, 20, Font.BOLD);
        DateTimeFormatter fecha = DateTimeFormatter.ofPattern("dd/MM/yyy");
        DateTimeFormatter hora = DateTimeFormatter.ofPattern("hh:mm a");
        PdfPTable tabla;
        try {
            Document documento = new Document(PageSize.A4);
            documento.setMargins(45, 45, 20, 20);
            
            PdfWriter.getInstance(documento, response.getOutputStream());
            documento.addTitle("BOLETA_"+idBoleta);
            documento.open();
            
            Image logo = Image.getInstance(getClass().getClassLoader().getResource("").getPath()+"img/logo.png");
            logo.setAlignment(Element.ALIGN_CENTER);
            logo.scalePercent(55);
            documento.add(logo);
            
            Paragraph titulo=new Paragraph("BOLETA ELECTRÓNICA N°"+idBoleta, fontTitulo);
            titulo.setAlignment(Element.ALIGN_CENTER);
            titulo.setSpacingBefore(10);
            titulo.setSpacingAfter(15);
            documento.add(titulo);
            
            tabla=new PdfPTable(2);
            tabla.setWidthPercentage(100);
            tabla.getDefaultCell().setBorder(0);
            tabla.addCell("Fecha de emisión: "+fecha.format(LocalDate.now())+" - "+hora.format(LocalTime.now()));
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell("Pedido: "+idPedido);
            documento.add(tabla);
            
            datosPersonales(tabla, documento);
            detallePedido(tabla, documento);
            fechasPedido(tabla, documento);
            
            documento.close();
            System.out.println("¡Se ha generado la hoja PDF!");
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        } catch (IOException ioException) {
            System.out.println("No se encontró el fichero para generar el pdf: " + ioException);
        }
    }
    
    public void datosPersonales(PdfPTable tabla, Document documento) {
        try {
            tabla=new PdfPTable(2);
            tabla.setWidthPercentage(100);
            tabla.setWidths(new float[] {7,20});
            tabla.setSpacingBefore(30);
            tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.getDefaultCell().setPadding(4);
            tabla.getDefaultCell().setPaddingBottom(7);
            tabla.getDefaultCell().setColspan(2);
            tabla.getDefaultCell().setBorder(0);
            tabla.addCell(new Phrase("DATOS PERSONALES", fontHeader));
            tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_LEFT);
            tabla.getDefaultCell().setColspan(1);
            tabla.addCell("Cliente:");
            tabla.addCell(nombre+" "+apellidos);
            tabla.addCell("DNI:");
            tabla.addCell(dni);
            tabla.addCell("Dirección:");
            tabla.addCell(direccion+" - "+dis+", "+pro+", "+dep);
            tabla.getDefaultCell().setBorderWidthBottom(2);
            tabla.addCell("Celular:");
            tabla.addCell(telefono);
            documento.add(tabla);
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        }
    }
    
    public void detallePedido(PdfPTable tabla, Document documento) {
        double importe, subtotal, igv, total=0.0;
        try {
            tabla=new PdfPTable(6);
            tabla.setWidthPercentage(100);
            tabla.setWidths(new float[] {2,3,10,4,4,4});
            tabla.setSpacingBefore(30);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
            tabla.getDefaultCell().setPadding(8);
            tabla.getDefaultCell().setPaddingBottom(10);
            tabla.addCell(new Phrase("#", fontHeader));
            tabla.addCell(new Phrase("ID", fontHeader));
            tabla.addCell(new Phrase("NOMBRE", fontHeader));
            tabla.addCell(new Phrase("PRECIO", fontHeader));
            tabla.addCell(new Phrase("CANT.", fontHeader));
            tabla.addCell(new Phrase("IMPORTE", fontHeader));
            
            for (int i = 1; i < listPedido.size(); i++) {
                Object[] fila=(Object[]) listPedido.get(i);
                tabla.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
                tabla.getDefaultCell().setBorder(0);
                tabla.getDefaultCell().setPadding(10);
                tabla.addCell(new Phrase(String.valueOf(i), fontBody));
                tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
                tabla.addCell(new Phrase(fila[0].toString(), fontBody));
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_LEFT);
                tabla.addCell(new Phrase(fila[1].toString(), fontBody));
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
                tabla.addCell(new Phrase(String.format("%.2f", fila[3]).replace(",", "."), fontBody));
                tabla.addCell(new Phrase(fila[2].toString(), fontBody));
                importe=(double)fila[3]*(int)fila[2];
                total+=importe;
                tabla.addCell(new Phrase(String.format("%.2f", importe).replace(",", "."), fontBody));
            }
            
            tabla.getDefaultCell().setBackgroundColor(BaseColor.DARK_GRAY);
            tabla.getDefaultCell().setBorderColorTop(BaseColor.WHITE);
            tabla.getDefaultCell().setBorderWidthTop(3);
            tabla.getDefaultCell().setPadding(6);
            tabla.getDefaultCell().setPaddingBottom(8);
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            subtotal=total/1.18;
            tabla.addCell(new Phrase("SUBTOTAL", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase(String.format("%.2f", subtotal).replace(",", "."), fontHeader));
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            igv=total-subtotal;
            tabla.addCell(new Phrase("IGV", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase(String.format("%.2f", igv).replace(",", "."), fontHeader));
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell(new Phrase("TOTAL", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase(String.format("%.2f", total).replace(",", "."), fontHeader));
            documento.add(tabla);
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        }
    }
    
    public void fechasPedido(PdfPTable tabla, Document documento) {
        try {
            tabla=new PdfPTable(2);
            tabla.setWidthPercentage(100);
            tabla.setSpacingBefore(30);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
            tabla.getDefaultCell().setPadding(5);
            tabla.getDefaultCell().setPaddingBottom(7);
            tabla.addCell(new Phrase("FECHA DE ENTREGA", fontHeader));
            tabla.addCell(new Phrase("FECHA DE DEVOLUCIÓN", fontHeader));
            tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
            tabla.getDefaultCell().setBorder(0);
            tabla.getDefaultCell().setBorderWidthBottom(2);
            tabla.getDefaultCell().setPadding(5);
            tabla.getDefaultCell().setPaddingBottom(7);
            DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyy");
            LocalDate fecha = LocalDate.parse(this.fecha);
            tabla.addCell(new Phrase(formato.format(fecha), fontBody));
            tabla.addCell(new Phrase(formato.format(fecha.plusDays(30)), fontBody));
            documento.add(tabla);
            
            Paragraph titulo=new Paragraph("BOLETA ELECTRÓNICA N°"+idBoleta, fontBody);
            titulo.setAlignment(Element.ALIGN_CENTER);
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        }
    }
}
